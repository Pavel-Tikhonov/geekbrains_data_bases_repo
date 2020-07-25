-- Работа над ошибками. Урок 9.
-- Практическое задание по теме “Транзакции, переменные, представления”
-- 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте
-- транзакции.

-- Здравствуйте Павел,
-- По транзакции:
-- Использовать тут представление пожалуй избыточно. Можно применить команду INSERT ... SELECT а также удалить исходную строку после этого, так как в условии у нас перенос.
START TRANSACTION;
INSERT INTO sample.users 
  SELECT * 
    FROM shop.users 
      WHERE users.id = 1;
DELETE FROM shop.users WHERE users.id = 1;
COMMIT;

-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"
-- 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, 
-- в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу 
-- "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

-- По функции:
-- DETERMINISTIC тут не подходит, мы поговорим об этом на уроке.
DROP FUNCTION IF EXISTS hello;
DELIMITER //
CREATE FUNCTION hello ()
RETURNS TEXT NO SQL
BEGIN
	
  SET @h_time = HOUR(NOW());
  IF (@h_time BETWEEN 6 AND 11) THEN 
    RETURN 'Доброе утро';
  ELSEIF (@h_time BETWEEN 12 AND 17) THEN
    RETURN 'Добрый день';
  ELSEIF (@h_time BETWEEN 18 AND 23) THEN
    RETURN 'Добрый вечер';
  ELSE
    RETURN 'Доброй ночи';
  END IF;
 
END//
DELIMITER ;
SELECT hello();
 
END//
DELIMITER ;
SELECT hello();

-- 2. В таблице products есть два текстовых поля: name с названием товара и description с его
-- описанием. Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля
-- принимают неопределенное значение NULL неприемлема. Используя триггеры, добейтесь
-- того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям
-- NULL-значение необходимо отменить операцию.

-- По триггеру:
-- 1. Триггер нужно вызывать перед операцией - BEFORE INSERT.
-- 2. Нужен ещё один такой-же на операцию обновления строки.
DROP TRIGGER IF EXISTS products_name_desc_not_null_on_delete;
DELIMITER //
CREATE TRIGGER products_name_desc_not_null_on_delete
  BEFORE INSERT ON products
FOR EACH ROW 
BEGIN 
	
  IF (NEW.name IS NULL AND NEW.description IS NULL) THEN
    SIGNAL SQLSTATE '45000' 
      SET MESSAGE_TEXT = 'INSERT canceled. Its not allowed to have NULL in name and description fields at the same time.';
  END IF;
 
END//
DELIMITER ;

DROP TRIGGER IF EXISTS products_name_desc_not_null_on_update;
DELIMITER //
CREATE TRIGGER products_name_desc_not_null_on_update
  BEFORE UPDATE ON products
FOR EACH ROW 
BEGIN 
	
  IF (NEW.name IS NULL AND NEW.description IS NULL) THEN
    SIGNAL SQLSTATE '45000' 
      SET MESSAGE_TEXT = 'UPDATE canceled. Its not allowed to have NULL in name and description fields at the same time.';
  END IF;
 
END//
DELIMITER ;

USE shop;
INSERT INTO shop.products VALUES (DEFAULT, NULL, NULL, '333', 4, NOW(), NOW());
UPDATE shop.products SET name = NULL, description = NULL WHERE id = 18;
SELECT * FROM products;
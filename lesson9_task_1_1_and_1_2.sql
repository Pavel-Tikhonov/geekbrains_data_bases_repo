SHOW DATABASES;
USE shop;

SHOW TABLES;
SELECT * FROM users;

USE sample;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';


-- Практическое задание по теме “Транзакции, переменные, представления”
-- 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте
-- транзакции.
START TRANSACTION;
DROP VIEW IF EXISTS u_1;
CREATE VIEW u_1 AS 
  SELECT * 
  FROM shop.users 
  WHERE users.id = 1;
INSERT INTO sample.users SELECT * FROM u_1;
COMMIT;

-- 2. Создайте представление, которое выводит название name товарной позиции 
-- из таблицы products и соответствующее название каталога name из таблицы catalogs.
SELECT * FROM products;
SELECT * FROM catalogs;

CREATE VIEW task_2 AS
  SELECT products.name AS product_name, catalogs.name AS catalog_name 
    FROM products 
      JOIN catalogs 
        ON products.catalog_id = catalogs.id;

SELECT * FROM task_2;






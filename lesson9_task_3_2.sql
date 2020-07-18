-- 2. В таблице products есть два текстовых поля: name с названием товара и description с его
-- описанием. Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля
-- принимают неопределенное значение NULL неприемлема. Используя триггеры, добейтесь
-- того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям
-- NULL-значение необходимо отменить операцию.
DROP TRIGGER IF EXISTS products_name_desc_not_null;
DELIMITER //
CREATE TRIGGER products_name_desc_not_null
  AFTER INSERT ON products
FOR EACH ROW 
BEGIN 
	
  IF (NEW.name IS NULL AND NEW.description IS NULL) THEN
    SIGNAL SQLSTATE '45000' 
      SET MESSAGE_TEXT = 'INSERT canceled. Its not allowed to have NULL in name and description fields at the same time.';
  END IF;
 
END//
DELIMITER ;

USE shop;
INSERT INTO shop.products VALUES (DEFAULT, '444', NULL, '333', 4, NOW(), NOW());
INSERT INTO shop.products VALUES (DEFAULT, NULL, '555', '333', 4, NOW(), NOW());
INSERT INTO shop.products VALUES (DEFAULT, NULL, NULL, '333', 4, NOW(), NOW());
SELECT * FROM products;


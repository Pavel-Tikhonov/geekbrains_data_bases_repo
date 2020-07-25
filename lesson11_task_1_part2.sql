USE shop;
DROP TRIGGER IF EXISTS users_logs_on_insert;
DROP TRIGGER IF EXISTS products_logs_on_insert;
DROP TRIGGER IF EXISTS catalogs_logs_on_insert;
DELIMITER //

CREATE TRIGGER users_logs_on_insert
  AFTER INSERT ON users
FOR EACH ROW 
BEGIN 
	
  INSERT INTO logs VALUES (
    DEFAULT,
    'users',
    NEW.id,
    NEW.name
  );

END//

CREATE TRIGGER products_logs_on_insert
  AFTER INSERT ON products
FOR EACH ROW 
BEGIN 
	
  INSERT INTO logs VALUES (
    DEFAULT,
    'products',
    NEW.id,
    NEW.name
  );

END//

CREATE TRIGGER catalogs_logs_on_insert
  AFTER INSERT ON catalogs
FOR EACH ROW 
BEGIN 
	
  INSERT INTO logs VALUES (
    DEFAULT,
    'catalogs',
    NEW.id,
    NEW.name
  );

END//
DELIMITER ;



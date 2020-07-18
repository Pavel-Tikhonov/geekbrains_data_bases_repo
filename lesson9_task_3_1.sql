-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"
-- 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, 
-- в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу 
-- "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
DROP FUNCTION IF EXISTS hello;
DELIMITER //
CREATE FUNCTION hello ()
RETURNS TEXT DETERMINISTIC
BEGIN
	
  SET @h_time = (SELECT DATE_FORMAT(NOW(), '%H'));
  IF (@h_time >= 6 AND @h_time < 12) THEN 
    RETURN 'Доброе утро';
  ELSEIF (@h_time >= 12 AND @h_time < 18) THEN
    RETURN 'Добрый день';
  ELSEIF (@h_time >= 18 AND @h_time < 24) THEN
    RETURN 'Добрый вечер';
  ELSE
    RETURN 'Доброй ночи';
  END IF;
 
END//
DELIMITER ;
SELECT hello();
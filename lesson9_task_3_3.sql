-- 3. (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи.
-- Числами Фибоначчи называется последовательность в которой число равно сумме двух
-- предыдущих чисел. Вызов функции FIBONACCI(10) должен возвращать число 55.   
-- if (n < 2) return n;
	-- return fib(n - 1) + fib(n - 2);
DROP FUNCTION IF EXISTS fib;
DELIMITER //
CREATE FUNCTION fib (n INT)
RETURNS INT DETERMINISTIC
BEGIN
  DECLARE i INT DEFAULT 2;
  DECLARE f1 INT DEFAULT 1;
  DECLARE f2 INT DEFAULT 1;
  IF (n < 3) THEN 
    RETURN n;
  ELSE 
    WHILE i < n DO
      SET @f_new = f1 + f2;
      SET i = i + 1;
      SET f1 = f2;
      SET f2 = @f_new;
    END WHILE;
    RETURN @f_new;
  END IF;
 
END//
DELIMITER ;
SELECT fib(10);
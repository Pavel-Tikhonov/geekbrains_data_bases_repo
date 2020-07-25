USE vk;
SELECT first_name FROM users;

-- 2. (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.

DROP TABLE IF EXISTS million_test;
CREATE TABLE million_test(
  name CHAR(25)
);

INSERT INTO million_test 
  SELECT t1.first_name 
    FROM users AS t1
      JOIN users AS t2
        JOIN users AS t3;
       
SELECT COUNT(*) FROM million_test;
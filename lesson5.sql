use example;
show tables;
SELECT * FROM users;

-- Редактирование таблицы users (постановка задачи)
UPDATE users SET name = 'John' WHERE id = 1;
UPDATE users SET name = 'Kate' WHERE id = 2;
UPDATE users SET name = 'Bill' WHERE id = 3;
UPDATE users SET name = 'Paul' WHERE id = 4;
UPDATE users SET name = 'Nick' WHERE id = 5;
UPDATE users SET name = 'Garry' WHERE id = 6;
UPDATE users SET name = 'David' WHERE id = 7;
UPDATE users SET name = 'Sara' WHERE id = 8;
UPDATE users SET name = 'Sam' WHERE id = 9;

ALTER TABLE users ADD created_at DATETIME;
ALTER TABLE users ADD updated_at DATETIME;

ALTER TABLE users ADD birthday_at VARCHAR(10);
UPDATE users SET birthday_at = 'august' WHERE id = 1;
UPDATE users SET birthday_at = 'may' WHERE id = 2;
UPDATE users SET birthday_at = 'september' WHERE id = 3;
UPDATE users SET birthday_at = 'october' WHERE id = 4;
UPDATE users SET birthday_at = 'november' WHERE id = 5;
UPDATE users SET birthday_at = 'december' WHERE id = 6;
UPDATE users SET birthday_at = 'january' WHERE id = 7;
UPDATE users SET birthday_at = 'february' WHERE id = 8;
UPDATE users SET birthday_at = 'march' WHERE id = 9;
-- Практическое задание по теме «Операторы,
-- фильтрация, сортировка и ограничение»
-- 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их
-- текущими датой и временем.
UPDATE users SET created_at = NOW(), updated_at = NOW();
-- 2. Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы
-- типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10.
-- Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.
UPDATE users SET created_at = NULL, updated_at = NULL;
ALTER TABLE users MODIFY COLUMN created_at VARCHAR(30);
ALTER TABLE users MODIFY COLUMN updated_at VARCHAR(30);
DESC users;
UPDATE users SET created_at = '20.10.2017 8:10', updated_at = '20.10.2017 8:10';
-- 2017-10-20 8:10:00 ->> требуемый календарный формат строки (пример)
-- Вывод года
    SELECT @year_str := SUBSTRING((SELECT created_at FROM users WHERE id = 1), 7, 4);
-- Вывод месяца
    SELECT @month_str := SUBSTRING((SELECT created_at FROM users WHERE id = 1), 4, 2);
-- Вывод дня
    SELECT @day_str := SUBSTRING((SELECT created_at FROM users WHERE id = 1), 1, 2);
-- Вывод времени
    SELECT @time_str := SUBSTRING((SELECT created_at FROM users WHERE id = 1), 11, 5);
-- Составление строковой записи календарного формата
    SELECT @datetime_str := CONCAT(@year_str, '-', @month_str, '-', @day_str, ' ', @time_str);
    UPDATE users SET created_at = @datetime_str;

ALTER TABLE users MODIFY COLUMN created_at DATETIME;
-- Таким образом, используя цикл WHILE можно последовательно в общем виде читать строки и переписывать их в нужном виде. Циклы мы пока не проходили, поэтому я их оформлять не стал.
-- Аналогично делается для столбца updated_at
-- 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые
-- разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы.
-- Необходимо отсортировать записи таким образом, чтобы они выводились в порядке
-- увеличения значения value. Однако нулевые запасы должны выводиться в конце, после всех записей.
CREATE TABLE IF NOT EXISTS storehouses_products (
	value BIGINT);
SHOW TABLES;
INSERT INTO storehouses_products VALUES
	(0),
	(2500),
	(0),
	(30),
	(500),
	(1);
SELECT value FROM storehouses_products ORDER BY IF(value = 0, 1, 0), value;
-- 4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и
-- мае. Месяцы заданы в виде списка английских названий (may, august)



SELECT name FROM users WHERE birthday_at = 'august' OR birthday_at = 'may';

-- 5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM
-- catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN.
-- Выполним это задание на примере таблицы users
SELECT * FROM users WHERE id IN(5, 1, 2) ORDER BY FIELD(id, 5, 1, 2);

-- Практическое задание теме «Агрегация данных»
-- 1. Подсчитайте средний возраст пользователей в таблице users.
UPDATE users SET birthday_at = NULL;
ALTER TABLE users MODIFY COLUMN birthday_at DATETIME;
UPDATE users SET birthday_at = '2017-10-20 8:10:00' WHERE id = 1;
UPDATE users SET birthday_at = '2008-01-05 8:10:00' WHERE id = 2;
UPDATE users SET birthday_at = '2000-02-07 8:10:00' WHERE id = 3;
UPDATE users SET birthday_at = '1980-03-09 8:10:00' WHERE id = 4;
UPDATE users SET birthday_at = '1950-04-11 8:10:00' WHERE id = 5;
UPDATE users SET birthday_at = '1995-05-23 8:10:00' WHERE id = 6;
UPDATE users SET birthday_at = '2003-06-17 8:10:00' WHERE id = 7;
UPDATE users SET birthday_at = '2010-07-19 8:10:00' WHERE id = 8;
UPDATE users SET birthday_at = '1976-08-27 8:10:00' WHERE id = 9;

-- Подсчет возраста
CREATE TEMPORARY TABLE age_temp (age BIGINT);
INSERT INTO age_temp (SELECT TIMESTAMPDIFF(YEAR, birthday_at, NOW()) FROM users);
SELECT * FROM age_temp;
-- Средний возраст пользователей
SELECT ROUND((SELECT AVG(age) FROM age_temp), 2);

-- 3. (по желанию) Подсчитайте произведение чисел в столбце таблицы.
CREATE TEMPORARY TABLE tbl(value BIGINT);
INSERT INTO tbl VALUES (1), (2), (3), (4), (5);
SELECT * FROM tbl;
SELECT exp(SUM(log(value))) FROM tbl;

-- 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.
-- Следует учесть, что необходимы дни недели текущего года, а не года рождения.
SELECT birthday_at FROM users;

DROP TABLE IF EXISTS birthdays;
CREATE TEMPORARY TABLE IF NOT EXISTS birthdays(
	old_dates DATETIME, 
	only_years VARCHAR(10) AS (DATE_FORMAT(old_dates, '%Y')),
	delta VARCHAR(10) AS ('2020' - only_years),
	new_dates DATETIME AS (DATE_ADD(old_dates, INTERVAL delta YEAR)),
	day_of_week INT AS (DAYOFWEEK(new_dates))
);

INSERT INTO birthdays(old_dates) SELECT birthday_at FROM users;
SELECT * FROM birthdays;
-- Согласно индексации дней недели: 1 - Воскресенье, 7 - это суббота.
-- Имеем результаты:
SELECT day_of_week, COUNT(day_of_week) AS birth_quantity FROM birthdays GROUP BY day_of_week;





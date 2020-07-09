
USE shop;

SHOW TABLES;
SELECT * FROM catalogs;
SELECT * FROM users;
SELECT * FROM products;
SELECT * FROM orders;

-- Практическое задание
-- 1.Составьте список пользователей users, которые осуществили хотя бы один заказ orders в
-- интернет магазине.

-- Заполнили таблицу orders с помощью filldb

-- Cписок пользователей users, которые осуществили хотя бы один заказ orders в
-- интернет магазине.
SELECT id, name FROM users WHERE users.id IN(SELECT orders.user_id FROM orders);

-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.
SELECT id, name, price, catalog_id, (SELECT name FROM catalogs WHERE catalogs.id = products.catalog_id) AS catalog_name FROM products;

-- 3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label,
-- name). Поля from, to и label содержат английские названия городов, поле name — русское.
-- Выведите список рейсов flights с русскими названиями городов.

DROP TABLE IF EXISTS flights;
CREATE TABLE `flights` (`id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, `from` VARCHAR(255), `to` VARCHAR(255));

INSERT INTO flights VALUES
(NULL, 'moscow', 'omsk'),
(NULL, 'novgorod', 'kazan'),
(NULL, 'irkutsk', 'moscow'),
(NULL, 'omsk', 'irkutsk'),
(NULL, 'moscow', 'kazan');



DROP TABLE IF EXISTS cities;
CREATE TABLE `cities` (`label` VARCHAR(255), `name` VARCHAR(255));

INSERT INTO cities VALUES
('moscow', 'Москва'),
('novgorod', 'Новгород'),
('irkutsk', 'Иркутск'),
('kazan', 'Казань'),
('omsk', 'Омск');


SELECT * FROM flights;
SELECT * FROM cities;

-- Выведите список рейсов flights с русскими названиями городов.
SELECT 
  id, 
  (SELECT name FROM cities WHERE cities.label = flights.`from`) AS `from`, 
  (SELECT name FROM cities WHERE cities.label = flights.`to`) AS `to` 
FROM flights;


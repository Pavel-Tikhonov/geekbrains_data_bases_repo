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
SELECT DISTINCT 
  users.id, 
  users.name 
FROM users 
  JOIN orders 
    ON users.id = orders.user_id;



-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.
SELECT 
  products.id, 
  products.name AS product_name, 
  products.price, 
  products.catalog_id, 
  catalogs.name AS catalog_name 
FROM products 
  JOIN catalogs 
    ON products.catalog_id = catalogs.id;

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
SELECT flights.id, cities_from.name AS `from`, cities.name AS `to` 
  FROM flights 
    JOIN cities AS cities_from
      ON flights.`from` = cities_from.label 
    JOIN cities 
      ON flights.`to` = cities.label
  ORDER BY flights.id;
   





 
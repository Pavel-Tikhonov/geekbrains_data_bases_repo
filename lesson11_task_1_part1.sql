-- Практическое задание по теме “Оптимизация запросов”
-- 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах 
-- users, catalogs и products в таблицу logs помещается время и дата создания записи, 
-- название таблицы, идентификатор первичного ключа и содержимое поля name.
USE shop;
SHOW TABLES;
SELECT * FROM users;
SELECT * FROM catalogs;
SELECT * FROM products;
SELECT * FROM logs;
DESC products;

DROP TABLE IF EXISTS logs;
CREATE TABLE logs(
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  table_name VARCHAR(55),
  raw_id INT UNSIGNED NOT NULL,
  name_field VARCHAR(255)
) ENGINE = Archive;

SHOW TABLE STATUS LIKE 'logs';

INSERT INTO users VALUES(
  DEFAULT,
  'users_name2',
  '2002-11-12',
  NOW(),
  NOW()
);

INSERT INTO catalogs VALUES(
  DEFAULT,
  'catalogs_name1'
);

INSERT INTO products VALUES(
  DEFAULT,
  'products_name1',
  'product_desc1',
  54000,
  1,
  NOW(),
  NOW()
);
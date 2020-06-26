SHOW DATABASES;
SHOW TABLES;
-- Доработаем нашу базу данных vk
DESCRIBE media;
SELECT * FROM users LIMIT 10;
-- 1)Уберем случаи, в которых момент обновления строки происходит якобы раньше, чем момент ее создания:
UPDATE users SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE profiles SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE messages SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE media_types SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE media SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE friendship_statuses SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE friendship SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE communities SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;

DESCRIBE profiles;
SELECT * FROM profiles LIMIT 10;
DESCRIBE communities_users;

-- 2)Реализуем применение функции RAND на примере столбца city таблицы profiles
CREATE TEMPORARY TABLE cities (name VARCHAR(150));
INSERT INTO cities VALUES ('Moscow'), ('St. Petersburg'), ('Omsk');
SELECT * FROM cities;
UPDATE profiles SET city = (SELECT name FROM cities ORDER BY RAND() LIMIT 1);

DESCRIBE messages;
SELECT * FROM messages LIMIT 10;
-- 3)Таблица messages.Изменим id получателя сообщения для случаев, когда id отправителя и получателя равны.
SELECT * FROM messages WHERE messages.from_user_id != messages.to_user_id;
UPDATE messages SET messages.to_user_id = FLOOR(1 + RAND() * 100) WHERE messages.from_user_id = messages.to_user_id;

DESCRIBE media;
SELECT * FROM media LIMIT 10;
SELECT * FROM media_types;
-- 4)Очистим таблицу media_types и заполним ее корректными данными
TRUNCATE media_types; 
INSERT INTO media_types (name) VALUES
	('photo'),
	('video'),
	('audio');
-- 5)Корректируем таблицу media
UPDATE media SET media_type_id = FLOOR(1 + RAND() * 3);

CREATE TEMPORARY TABLE extensions (name VARCHAR(10));
INSERT INTO extensions VALUES ('.jpeg'), ('.png'), ('.gif'), ('.avi'), ('.mpeg');
SELECT * FROM extensions;

UPDATE media SET filename = CONCAT(
	'https://dropbox.com/vk/',
	filename,
	(SELECT name FROM extensions ORDER BY RAND() LIMIT 1)
	);

UPDATE media SET size = FLOOR(10000 + RAND() * 1000000);

UPDATE media SET metadata = CONCAT(
	'{"owner":"',
	(SELECT CONCAT(users.first_name, ' ', users.last_name) FROM users WHERE users.id = media.user_id),
	'"}'
	);

ALTER TABLE media MODIFY COLUMN metadata JSON;

-- 6)Корректируем таблицы friendship и friendship_statuses
DESCRIBE friendship;
SELECT * FROM friendship LIMIT 10;
ALTER TABLE friendship DROP COLUMN requested_at;
DESCRIBE friendship_statuses;
SELECT * FROM friendship_statuses LIMIT 10;
DELETE FROM friendship_statuses WHERE id > 3;

CREATE TEMPORARY TABLE f_statuses (name VARCHAR(15));
INSERT INTO f_statuses VALUES ('requested'), ('confirmed'), ('rejected');
SELECT * FROM f_statuses;

ALTER TABLE friendship_statuses DROP INDEX name;
UPDATE friendship_statuses SET name = (SELECT name FROM f_statuses ORDER BY RAND() LIMIT 1);

UPDATE friendship SET status_id = FLOOR(1 + RAND() * 3);

-- 6)Работа с таблицами communities и communities_users
DESCRIBE communities;
SELECT * FROM communities;
DESCRIBE communities_users;
SELECT * FROM communities_users LIMIT 10;


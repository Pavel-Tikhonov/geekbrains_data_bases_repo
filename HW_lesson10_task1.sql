-- Задания на БД vk:

-- 1. Проанализировать какие запросы могут выполняться наиболее
-- часто в процессе работы приложения и добавить необходимые индексы.
USE vk;
SHOW TABLES;

SELECT * FROM users;
-- Возможно в таблице users часто поиск будет производиться по столбцу с фамилиями, а также по дате регистрации(сортировка старых и молодых пользователей)
CREATE INDEX users_last_name_idx ON users(last_name);
CREATE INDEX users_created_at_idx ON users(created_at);
SHOW INDEX FROM users;

SELECT * FROM profiles;
-- В таблице profiles популярными для запроса столбцами могут быть пол, день рождения, страна и город
CREATE INDEX profiles_gender_idx ON profiles(gender);
CREATE INDEX profiles_birthday_idx ON profiles(birthday);
CREATE INDEX profiles_city_idx ON profiles(city);
CREATE INDEX profiles_country_idx ON profiles(country);
SHOW INDEX FROM profiles;

SELECT * FROM communities;
-- В таблице communities популярным для запроса будет название сообщества
CREATE INDEX communities_name_idx ON communities(name);
SHOW INDEX FROM communities;

SELECT * FROM communities_users;
-- В таблице communities_users уже присутствует внешний ключ
SHOW INDEX FROM communities_users;

SELECT * FROM friendship;
-- В таблице friendship уже присутствуют внешние ключи на всех основных столбцах
SHOW INDEX FROM friendship;

SELECT * FROM friendship_statuses;
-- В таблице friendship_statuses можно добавить индекс по названию статуса
CREATE INDEX friendship_statuses_name_idx ON friendship_statuses(name);
SHOW INDEX FROM friendship_statuses;

SELECT * FROM likes;
-- В таблице likes уже присутствуют внешние ключи на всех основных столбцах
SHOW INDEX FROM likes;

SELECT * FROM media;
-- В таблице media можно добавить индекс по имени файла
CREATE INDEX media_filename_idx ON media(filename);
SHOW INDEX FROM media;

SELECT * FROM media_posts;
-- В таблице media_posts уже присутствуют внешние ключи на всех основных столбцах
SHOW INDEX FROM media_posts;


SELECT * FROM media_types;
-- В таблице media_types можно добавить индекс по названию типа файла
CREATE INDEX media_types_name_idx ON media_types(name);
SHOW INDEX FROM media_types;

SELECT * FROM messages;
-- В таблице messages можно добавить составной индекс для поиска по столбцу отправителя и получателя сообщения
CREATE INDEX messages_from_user_id_to_user_id_idx ON messages(from_user_id, to_user_id);
SHOW INDEX FROM messages;

SELECT * FROM posts;
-- В таблице posts можно добавить индексы по заголовку поста и дате создания 
CREATE INDEX posts_head_idx ON posts(head);
CREATE INDEX posts_created_at_idx ON posts(created_at);
SHOW INDEX FROM posts;

SELECT * FROM target_types;
-- В таблице posts можно добавить индекс по названию типа объекта
CREATE INDEX target_types_name_idx ON target_types(name);
SHOW INDEX FROM target_types;
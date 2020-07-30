
-- Создадим необходимые индексы для таблиц нашей базы данных.
USE pikabu;
/*
SHOW TABLES;
SELECT * FROM commentaries c ;
SELECT * FROM communities c ;
SELECT * FROM like_types lt ;
SELECT * FROM likes l ;
SELECT * FROM media m ;
SELECT * FROM media_posts mp ;
SELECT * FROM media_types mt ;
SELECT * FROM posts p ;
SELECT * FROM ratings r ;
SELECT * FROM subscribes s ;
SELECT * FROM target_types tt ;
SELECT * FROM users u ;
SELECT * FROM users_private up ;
*/

-- SELECT * FROM users;
-- Возможно в таблице users часто поиск будет производиться по столбцу с никами, а также по дате регистрации(сортировка старых и молодых пользователей)
CREATE INDEX users_nickname_idx ON users(nickname);
CREATE INDEX users_created_at_idx ON users(created_at);
-- SHOW INDEX FROM users;

-- SELECT * FROM users_private;
-- В таблице users_private популярными для запроса столбцами могут быть данные, привязанные к аккаунту: телефон, почтовый адрес и ссылка на соц. сеть
-- Поскольку всем этим полям соответствует свойство UNIQUE - индексы по этим полям созданы автоматически при создании столбцов таблицы
-- SHOW INDEX FROM users_private;
-- DESC users_private;

-- SELECT * FROM communities;
-- В таблице communities популярным для запроса будет название сообщества, а также дата его создания
-- Столбцу name при создании таблицы было указано свойство UNIQUE -> индекс по нему уже создан
CREATE INDEX communities_created_at_idx ON communities(created_at);
-- SHOW INDEX FROM communities;
-- DESC communities;

-- SELECT * FROM subscribes;
-- В таблице subscribes можно создать индексы по стобцам target_id и created_at
CREATE INDEX subscribes_target_id_idx ON subscribes(target_id);
CREATE INDEX subscribes_created_at_idx ON subscribes(created_at);
-- SHOW INDEX FROM subscribes;
-- DESC subscribes;

-- SELECT * FROM likes;
-- В таблице likes можно создать индексы по стобцам target_id и created_at
CREATE INDEX likes_target_id_idx ON likes(target_id);
CREATE INDEX likes_created_at_idx ON likes(created_at);
-- SHOW INDEX FROM likes;

-- SELECT * FROM media;
-- В таблице media можно добавить индекс по имени файла и по дате его загрузки
CREATE INDEX media_filename_idx ON media(filename);
CREATE INDEX media_created_at_idx ON media(created_at);
-- SHOW INDEX FROM media;

-- SELECT * FROM media_posts;
-- В таблице media_posts уже присутствуют внешние ключи на всех основных столбцах
-- SHOW INDEX FROM media_posts;

-- SELECT * FROM media_types;
-- В таблице media_types уже присутствуют внешние ключи на всех основных столбцах
-- SHOW INDEX FROM media_types;
-- DESC media_types;

-- SELECT * FROM commentaries;
-- В таблице commentaries можно создать индексы по стобцам target_id и created_at
CREATE INDEX commentaries_target_id_idx ON commentaries(target_id);
CREATE INDEX commentaries_created_at_idx ON commentaries(created_at);
-- SHOW INDEX FROM commentaries;

-- SELECT * FROM posts;
-- В таблице posts можно добавить индексы по заголовку поста и дате создания 
CREATE INDEX posts_head_idx ON posts(head);
CREATE INDEX posts_created_at_idx ON posts(created_at);
-- SHOW INDEX FROM posts;

-- SELECT * FROM target_types;
-- В таблице target_types уже присутствуют внешние ключи на всех основных столбцах
-- SHOW INDEX FROM target_types;

-- SELECT * FROM like_types;
-- В таблице like_types уже присутствуют внешние ключи на всех основных столбцах
-- SHOW INDEX FROM like_types;

-- SELECT * FROM ratings;
-- В таблице ratings можно создать индексы по столбцам target_id и rating_value
CREATE INDEX ratings_target_id_idx ON ratings(target_id);
CREATE INDEX ratings_rating_value_idx ON ratings(rating_value);
-- SHOW INDEX FROM ratings;
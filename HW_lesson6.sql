-- Практическое задание по теме “Операторы, фильтрация, сортировка и ограничение. 
-- Агрегация данных”

-- Работаем с БД vk и тестовыми данными, которые вы сгенерировали ранее:

-- 1. Создать все необходимые внешние ключи и диаграмму отношений.

USE vk;
SHOW TABLES;

ALTER TABLE profiles 
  ADD CONSTRAINT profiles_user_id_fk
  FOREIGN KEY (user_id) REFERENCES users(id)
  ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
  FOREIGN KEY (photo_id) REFERENCES media(id)
  ON DELETE SET NULL;

 ALTER TABLE media
  ADD CONSTRAINT media_user_id_fk
  FOREIGN KEY (user_id) REFERENCES users(id)
  ON DELETE CASCADE,
  ADD CONSTRAINT media_media_type_id_fk
  FOREIGN KEY (media_type_id) REFERENCES media_types(id)
  ON DELETE NO ACTION;
 
ALTER TABLE communities_users 
  ADD CONSTRAINT communities_users_user_id_fk
  FOREIGN KEY (user_id) REFERENCES users(id)
  ON DELETE CASCADE,
  ADD CONSTRAINT communities_users_community_id_fk
  FOREIGN KEY (community_id) REFERENCES communities(id)
  ON DELETE CASCADE;
 
ALTER TABLE friendship 
  ADD CONSTRAINT friendship_user_id_fk
  FOREIGN KEY (user_id) REFERENCES users(id)
  ON DELETE CASCADE,
  ADD CONSTRAINT friendship_friend_id_fk
  FOREIGN KEY (friend_id) REFERENCES users(id)
  ON DELETE CASCADE,
  ADD CONSTRAINT friendship_status_id_fk
  FOREIGN KEY (status_id) REFERENCES friendship_statuses(id)
  ON DELETE NO ACTION;
 
ALTER TABLE messages 
  ADD CONSTRAINT messages_from_user_id_fk
  FOREIGN KEY (from_user_id) REFERENCES users(id)
  ON DELETE CASCADE,
  ADD CONSTRAINT messages_to_user_id_fk
  FOREIGN KEY (to_user_id) REFERENCES users(id)
  ON DELETE CASCADE;
  
-- 2. Создать и заполнить таблицы лайков и постов.

-- Таблица лайков
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Таблица типов лайков
DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');

 SELECT * FROM  target_types;
 
-- Заполняем лайки
SELECT * FROM  messages;
SELECT * FROM  users;
SELECT * FROM  media;
SELECT * FROM  communities;

INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;

-- Проверим
SELECT * FROM likes LIMIT 10;

-- Создадим таблицу постов
DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  is_public BOOLEAN DEFAULT TRUE,
  is_archived BOOLEAN DEFAULT FALSE,
  views_counter INT UNSIGNED DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS media_posts;
CREATE TABLE media_posts(
  media_id INT UNSIGNED NOT NULL,
  post_id INT UNSIGNED NOT NULL,
  PRIMARY KEY(media_id, post_id)
);


-- После заполнения с помощью filldb таблиц posts и media_posts 
-- проверим сгенерированные данные на корректность:

UPDATE posts SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
SELECT id, is_public, is_archived FROM posts WHERE is_public = is_archived;
UPDATE posts SET is_public = !is_archived WHERE is_public = is_archived;
SELECT * FROM  posts;

-- Добавим внешние ключ созданным таблицам

ALTER TABLE posts 
  ADD CONSTRAINT posts_user_id_fk
  FOREIGN KEY (user_id) REFERENCES users(id)
  ON DELETE CASCADE,
  ADD CONSTRAINT posts_community_id_fk
  FOREIGN KEY (community_id) REFERENCES communities(id)
  ON DELETE SET NULL;

ALTER TABLE media_posts 
  ADD CONSTRAINT media_posts_media_id_fk
  FOREIGN KEY (media_id) REFERENCES media(id)
  ON DELETE NO ACTION,
  ADD CONSTRAINT media_posts_post_id_fk
  FOREIGN KEY (post_id) REFERENCES posts(id)
  ON DELETE CASCADE;

DESC media_posts;

ALTER TABLE likes
  ADD CONSTRAINT likes_target_type_id_fk
  FOREIGN KEY (target_type_id) REFERENCES target_types(id)
  ON DELETE NO ACTION;

 ALTER TABLE likes
  ADD CONSTRAINT likes_user_id_fk
  FOREIGN KEY (user_id) REFERENCES users(id)
  ON DELETE CASCADE;
 
 /* 
  INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');
  */
 -- media(id) messages(id) posts(id)
 
ALTER TABLE likes
  ADD CONSTRAINT likes_target_id_fk_users
  FOREIGN KEY (target_id) REFERENCES users(id) 
  ON DELETE CASCADE,
  ADD CONSTRAINT likes_target_id_fk_media
  FOREIGN KEY (target_id) REFERENCES media(id) 
  ON DELETE CASCADE,
  ADD CONSTRAINT likes_target_id_fk_messages
  FOREIGN KEY (target_id) REFERENCES messages(id) 
  ON DELETE CASCADE,
  ADD CONSTRAINT likes_target_id_fk_posts
  FOREIGN KEY (target_id) REFERENCES posts(id) 
  ON DELETE CASCADE;
  
 
-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT profiles.gender, COUNT(*) AS sex_amount FROM likes, profiles WHERE profiles.user_id = likes.user_id GROUP BY gender;


-- 4. Подсчитать количество лайков которые получили 10 самых молодых пользователей. 
SELECT * FROM likes;
SELECT * FROM target_types;

SELECT
  likes.user_id, 
  (SELECT birthday FROM profiles WHERE profiles.user_id = likes.user_id) AS birthday,
  COUNT(*) AS total_likes
FROM likes 
  WHERE target_type_id = (SELECT id FROM target_types WHERE name = 'users')
  GROUP BY user_id
  ORDER BY birthday DESC LIMIT 10;


-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в
-- использовании социальной сети
-- (критерии активности необходимо определить самостоятельно).
 
SELECT * FROM users;
SELECT * FROM profiles;
SELECT * FROM likes;
SELECT * FROM posts;

SELECT profiles.user_id FROM profiles WHERE profiles.user_id NOT IN(SELECT likes.user_id FROM likes); -- Не поставили ни одного лайка
SELECT profiles.user_id FROM profiles WHERE profiles.user_id NOT IN(SELECT posts.user_id FROM posts); -- Не написали ни одного поста

SELECT profiles.user_id FROM profiles 
  WHERE profiles.user_id NOT IN(SELECT likes.user_id FROM likes)
   AND profiles.user_id NOT IN(SELECT posts.user_id FROM posts); -- Не поставили ни одного лайка и не написали ниодного поста

   
 SELECT TIMESTAMPDIFF(HOUR, created_at, NOW()) AS hours_as_user FROM users; -- Время, проведенное в качестве пользователя со дня регистрации в часах
 
 SELECT TIMESTAMPDIFF(HOUR, created_at, NOW()) AS hours_as_user, users.id FROM users 
   WHERE users.id IN(
     SELECT profiles.user_id FROM profiles 
       WHERE profiles.user_id NOT IN(SELECT likes.user_id FROM likes)
         AND profiles.user_id NOT IN(SELECT posts.user_id FROM posts)
        ) ORDER BY hours_as_user DESC; -- Тот, кто был пользователем дольше всех, но ни написал пост, ни поставил лайк - у того и меньшая активность
        


   
  




 
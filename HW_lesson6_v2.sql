-- ДЗ к уроку 6, используя JOIN
USE vk;

-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT * FROM likes ORDER BY likes.target_id;
SELECT * FROM profiles;

SELECT  
  profiles.gender
FROM profiles
  JOIN likes
    ON profiles.user_id = likes.user_id;
   
-- Группируем и сортируем
SELECT  
  profiles.gender,
  COUNT(*) AS total
FROM profiles
  JOIN likes
    ON profiles.user_id = likes.user_id
GROUP BY gender;


-- 4. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

-- Смотрим типы для лайков
SELECT * FROM target_types;

-- Выбираем профили с сортировкой по дате рождения
SELECT * FROM profiles ORDER BY birthday DESC LIMIT 10;

-- Выбираем количество лайков по условию
SELECT profiles.user_id FROM profiles ORDER BY birthday DESC LIMIT 10; -- 10 самых молодых пользователей

CREATE TEMPORARY TABLE young_users(value BIGINT UNSIGNED NOT NULL);
SELECT * FROM young_users;
INSERT INTO young_users SELECT profiles.user_id FROM profiles ORDER BY birthday DESC LIMIT 10;

-- Всего пользователей, которым поставили лайки
SELECT 
  likes.target_id
FROM profiles 
  JOIN likes 
    ON profiles.user_id = likes.target_id
WHERE likes.target_type_id = 2;
 
-- Теперь выведем и подсчитаем id только тех пользователей, которым поставили лайки и которые входят в множество самых молодых
SELECT 
  COUNT(likes.target_id) AS total_likes
FROM profiles 
  JOIN likes 
    ON profiles.user_id = likes.target_id
WHERE likes.target_type_id = 2 AND likes.target_id IN (SELECT * FROM young_users);


  -- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной 
-- сети.     
	  
SELECT 
  CONCAT(users.first_name, ' ', users.last_name) AS user,
  COUNT(likes.user_id)
FROM users 
  LEFT JOIN likes 
    ON likes.user_id = users.id
  JOIN media 
    ON media.user_id = users.id 
  JOIN messages 
    ON messages.from_user_id = users.id
GROUP BY users.id;
    
SELECT 
  COUNT(*)
FROM users 
  JOIN likes 
    ON likes.user_id = users.id;

SELECT * FROM users LEFT JOIN likes ON likes.user_id = users.id LEFT JOIN media ON media.user_id = users.id LIMIT 10;

SELECT 
  CONCAT(users.first_name, ' ', users.last_name) AS user,
  users.id,
  COUNT(likes.id) AS total_likes,
  COUNT(media.id) AS total_media,
  COUNT(messages.id ) AS total_messages
FROM users 
  LEFT JOIN likes 
    ON likes.user_id = users.id
  LEFT JOIN media 
    ON media.user_id = users.id
  LEFT JOIN messages 
    ON messages.from_user_id = users.id
GROUP BY users.id;

SELECT 
  CONCAT(users.first_name, ' ', users.last_name, ' ', users.id) AS user,
  users.id,
  COUNT(likes.user_id) +
  COUNT(media.user_id) +
  COUNT(messages.from_user_id ) AS total
FROM users 
  LEFT JOIN likes 
    ON likes.user_id = users.id
  LEFT JOIN media 
    ON media.user_id = users.id
  LEFT JOIN messages 
    ON messages.from_user_id = users.id
GROUP BY users.id
ORDER BY total DESC;


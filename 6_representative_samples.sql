USE pikabu;
SHOW TABLES;
SELECT * FROM commentaries c ORDER BY user_id;
SELECT * FROM communities c ;
SELECT * FROM like_types lt ;
SELECT * FROM likes l ;
SELECT * FROM media m ;
SELECT * FROM media_posts mp ;
SELECT * FROM media_types mt ;
SELECT * FROM posts p ORDER BY user_id;
SELECT * FROM ratings r ORDER BY target_id;
SELECT * FROM subscribes s ;
SELECT * FROM target_types tt ;
SELECT * FROM users u ;
SELECT * FROM users_private up ;


-- Характерные представления
-- 1) Упорядоченный список с личным рейтингом пользователей
CREATE OR REPLACE VIEW top_rating_users_list AS
  SELECT r.rating_value, 
         u.nickname 
    FROM ratings r
      JOIN target_types tt 
        ON r.target_type_id = tt.id
      JOIN users u 
        ON r.target_id = u.id 
    WHERE tt.name = 'user'
    ORDER BY r.rating_value DESC; 
   
SELECT * FROM top_rating_users_list;

-- 2) Список подписок пользователей на сообщества, упорядоченный по id сообщества
CREATE OR REPLACE VIEW subscribes_only_communities AS
  SELECT s.user_id, 
         s.target_id
    FROM subscribes s
      JOIN target_types tt
        ON s.target_type_id = tt.id 
    WHERE tt.name = 'community'
  ORDER BY target_id;
   
SELECT * FROM subscribes_only_communities;

-- Используем созданное представление для формирования таблицы по подсчету количества подписанных пользователей для каждого сообщества
SELECT DISTINCT c2.name AS community_name,
                COUNT(s.user_id) OVER (PARTITION BY c2.name) AS total_users,
                (SELECT COUNT(name) FROM communities) AS total_communities,
                (SELECT DISTINCT(COUNT(user_id)) FROM subscribes_only_communities) AS total_community_subscribers,
                (SELECT DISTINCT(COUNT(user_id)) FROM subscribes_only_communities) / 
                  (SELECT COUNT(name) FROM communities) AS avg_users
  FROM communities c2
    LEFT JOIN subscribes_only_communities s
      ON c2.id = s.target_id
  ORDER BY total_users DESC; 
   
-- Характерные выборки
-- 1) 10 самых старых пользователей сайта
SELECT nickname, 
       TIMESTAMPDIFF(YEAR, created_at, NOW()) AS Age
  FROM users ORDER BY Age DESC LIMIT 10;

 -- 2) Средний возраст аккаунтов пользователей сайта
SELECT AVG(TIMESTAMPDIFF(YEAR, created_at, NOW())) AS AVG_Age
  FROM users;
   
-- 3) Количество мужчин и женщин среди пользователей ресурса
SELECT DISTINCT gender, 
                COUNT(*) OVER (PARTITION BY gender) AS total
  FROM users; 
  
-- 4) Упорядоченный список электронной почты в соответствии с никами и id пользователя
SELECT up.email, 
       u.nickname, 
       u.id 
  FROM users_private up
    JOIN users u 
      ON up.user_id = u.id
  ORDER BY up.email; 
  
-- 5) Запрос, возвращающий информацию по заголовку поста, его id, его автору, количеству просмотров поста и рейтингу поста
-- Для корректного выполнения данного запроса предварительно создадим представление - выбору рейтинга по всем постам
CREATE OR REPLACE VIEW ratings_only_posts AS
  SELECT r.rating_value, 
         r.target_id
    FROM ratings r
      JOIN target_types tt
        ON r.target_type_id = tt.id 
    WHERE tt.name = 'post'
  ORDER BY target_id;

-- Сам запрос: для постов, которые не вошли в таблицу ratings для корректного отображения нулевого рейтинга воспользуемся функцией IFNULL()
SELECT p.id,
       p.head, 
       u.nickname AS post_author,
       p.views_counter,
       IFNULL(r2.rating_value, 0) AS post_rating
  FROM posts p
    JOIN users u
      ON p.user_id = u.id
    LEFT JOIN ratings_only_posts r2
      ON p.id = r2.target_id
    ORDER BY post_rating DESC; 
 

-- 6) Список авторов медиа-файлов, у которых суммарный размер размещенного на сайте медиа-контента превышает 1000000 b
SELECT DISTINCT u.nickname,
       SUM(m.size) AS total_size
  FROM media m 
    JOIN users u 
      ON m.user_id = u.id
  GROUP BY m.user_id 
    HAVING total_size > 1000000
  ORDER BY total_size DESC; 
  
 -- 7)Таблица с количеством поставленных "плюсов" или "минусов" с группировкой по полу пользователей
SELECT CASE (u.gender)
         WHEN 'm' THEN 'Men'
         WHEN 'w' THEN 'Women'
       END AS gender,
       lt.name,
       COUNT(*) AS total
  FROM likes l 
    JOIN users u
      ON l.user_id = u.id
    JOIN like_types lt
      ON l.like_type_id = lt.id
    GROUP BY u.gender, lt.name; 

 -- 8) Таблица общей активности пользователей
SELECT u.id,
       COUNT(DISTINCT c.id) AS comments,
       COUNT(DISTINCT p.id) AS posts,
       COUNT(DISTINCT l.id) AS likes,
       COUNT(DISTINCT c.id) +
         COUNT(DISTINCT p.id) +
           COUNT(DISTINCT l.id) AS total_activity
  FROM users u 
    LEFT JOIN commentaries c 
      ON u.id = c.user_id
    LEFT JOIN posts p 
      ON u.id = p.user_id 
    LEFT JOIN likes l 
      ON u.id = l.user_id
  GROUP BY u.id
  ORDER BY total_activity DESC; 
    



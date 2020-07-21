USE vk;
SHOW TABLES;
SELECT * FROM communities_users;
SELECT * FROM communities;
SELECT * FROM users;
SELECT * FROM profiles;
-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах
-- самый молодой пользователь в группе
-- самый старший пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100

 SELECT DISTINCT communities.name AS com_name, 
                 COUNT(communities_users.community_id) OVER (PARTITION BY communities_users.community_id) AS users_count,
                 COUNT(communities_users.community_id) OVER () AS total_users,
                 COUNT(communities_users.community_id) OVER (PARTITION BY communities_users.community_id) / COUNT(communities_users.community_id) OVER () * 100 AS "%%",
                 COUNT(communities.id) OVER () AS total_groups,
                 COUNT(communities_users.community_id) OVER () / COUNT(communities.id) OVER () AS avg_user_per_group,
                 FIRST_VALUE(users.first_name) OVER (PARTITION BY communities_users.community_id ORDER BY profiles.birthday) AS oldest_user,
                 -- CONCAT(FIRST_VALUE(users.first_name), ' ', FIRST_VALUE(users.last_name)) так работать не хочет
                 FIRST_VALUE(users.first_name) OVER (PARTITION BY communities_users.community_id ORDER BY profiles.birthday DESC) AS youngest_user
 FROM communities_users 
   JOIN communities 
     ON communities_users.community_id = communities.id
   JOIN profiles  
     ON communities_users.user_id = profiles .user_id
   JOIN users  
     ON communities_users.user_id = users.id;
     
  
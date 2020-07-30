USE pikabu;
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

-- Создание внешних ключей
ALTER TABLE commentaries 
  ADD CONSTRAINT commentaries_user_id_fk
  FOREIGN KEY (user_id) REFERENCES users(id)
  ON DELETE CASCADE,
  ADD CONSTRAINT commentaries_target_type_id_fk
  FOREIGN KEY (target_type_id) REFERENCES target_types(id)
  ON DELETE NO ACTION;
  
 ALTER TABLE likes 
  ADD CONSTRAINT likes_user_id_fk
  FOREIGN KEY (user_id) REFERENCES users(id)
  ON DELETE CASCADE,
  ADD CONSTRAINT likes_target_type_id_fk
  FOREIGN KEY (target_type_id) REFERENCES target_types(id)
  ON DELETE NO ACTION,
  ADD CONSTRAINT likes_like_type_id_fk
  FOREIGN KEY (like_type_id) REFERENCES like_types(id)
  ON DELETE NO ACTION;
  
 ALTER TABLE media 
  ADD CONSTRAINT media_user_id_fk
  FOREIGN KEY (user_id) REFERENCES users(id)
  ON DELETE CASCADE,
  ADD CONSTRAINT media_media_type_id_fk
  FOREIGN KEY (media_type_id) REFERENCES media_types(id)
  ON DELETE NO ACTION;
  
 ALTER TABLE media_posts 
  ADD CONSTRAINT media_posts_media_id_fk
  FOREIGN KEY (media_id) REFERENCES media(id)
  ON DELETE NO ACTION,
  ADD CONSTRAINT media_posts_post_id_fk
  FOREIGN KEY (post_id) REFERENCES posts(id)
  ON DELETE CASCADE;
  
 ALTER TABLE posts
  ADD CONSTRAINT posts_user_id_fk
  FOREIGN KEY (user_id) REFERENCES users(id)
  ON DELETE CASCADE,
  ADD CONSTRAINT posts_community_id_fk
  FOREIGN KEY (community_id) REFERENCES communities(id)
  ON DELETE NO ACTION;
  
 ALTER TABLE ratings 
  ADD CONSTRAINT ratings_target_type_id_fk
  FOREIGN KEY (target_type_id) REFERENCES target_types(id)
  ON DELETE NO ACTION;
  
 ALTER TABLE subscribes 
  ADD CONSTRAINT subscribes_user_id_fk
  FOREIGN KEY (user_id) REFERENCES users(id)
  ON DELETE CASCADE,
  ADD CONSTRAINT subscribes_target_type_id_fk
  FOREIGN KEY (target_type_id) REFERENCES target_types(id)
  ON DELETE NO ACTION;
  
 ALTER TABLE users 
  ADD CONSTRAINT users_avatar_id_fk
  FOREIGN KEY (avatar_id) REFERENCES media(id)
  ON DELETE NO ACTION;
  
 ALTER TABLE users_private 
  ADD CONSTRAINT users_private_user_id_fk
  FOREIGN KEY (user_id) REFERENCES users(id)
  ON DELETE CASCADE;
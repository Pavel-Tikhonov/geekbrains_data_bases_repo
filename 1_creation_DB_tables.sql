-- В качестве основы для курсового проекта была выбрана платформа информационно-развлекательного портала pikabu.ru
-- Создадим БД
CREATE DATABASE pikabu;
USE pikabu;

-- Создаём таблицу пользователей
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  nickname VARCHAR(100) NOT NULL COMMENT "Имя пользователя",
  about VARCHAR(140) COMMENT "Информация 'о себе'",
  gender CHAR(1) NOT NULL COMMENT "Пол",
  avatar_id INT UNSIGNED COMMENT "Ссылка на аватар пользователя",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Пользователи";  

-- Создаём таблицу с приватной информацией пользователей
DROP TABLE IF EXISTS users_private;
CREATE TABLE users_private (
  user_id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "Ссылка на пользователя", 
  phone VARCHAR(100) UNIQUE COMMENT "Телефон, привязанный к аккаунту",
  email VARCHAR(100) NOT NULL UNIQUE COMMENT "Почта, привязанная к аккаунту (обязательно)",
  social_link VARCHAR(100) UNIQUE COMMENT "Привязка к аккаунту соц. сети",
  `password` VARCHAR(100) NOT NULL UNIQUE COMMENT "Пароль к аккаунту",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Приватная информация пользователей";

-- Таблица медиафайлов
DROP TABLE IF EXISTS media;
CREATE TABLE media (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя, который загрузил файл",
  filename VARCHAR(255) NOT NULL COMMENT "Путь к файлу",
  size INT NOT NULL COMMENT "Размер файла",
  metadata JSON COMMENT "Метаданные файла",
  media_type_id INT UNSIGNED NOT NULL COMMENT "Ссылка на тип контента",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Медиафайлы";

-- Таблица типов медиафайлов
DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название типа",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Типы медиафайлов";

-- Таблица постов
DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  community_id INT UNSIGNED COMMENT "Сообщество, в котором был опубликован пост",
  head VARCHAR(255) COMMENT "Заголовок поста",
  body TEXT NOT NULL COMMENT "Текстовое содержимое поста",
  views_counter INT UNSIGNED DEFAULT 0 COMMENT "Количество просмотров поста",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Посты";

-- Таблица связи медиа-файлов с постами
DROP TABLE IF EXISTS media_posts;
CREATE TABLE media_posts(
  media_id INT UNSIGNED NOT NULL COMMENT "Ссылка на медиа-файл",
  target_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пост или комментарий",
  target_type_id INT UNSIGNED NOT NULL COMMENT "Тип  объекта, под которым публикуется медиа-контент",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки", 
  PRIMARY KEY(media_id, post_id)
) COMMENT "Связи медиа-файлов с постами";

-- Таблица сообществ
DROP TABLE IF EXISTS communities;
CREATE TABLE communities (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор сроки",
  name VARCHAR(150) NOT NULL UNIQUE COMMENT "Название сообщества",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"  
) COMMENT "Сообщества";

-- Таблица подписок
DROP TABLE IF EXISTS subscribes;
CREATE TABLE subscribes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор сроки",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя, оформившего подписку",
  target_id INT UNSIGNED NOT NULL COMMENT "Ссылка на объект, на который оформляется подписка",
  target_type_id INT UNSIGNED NOT NULL COMMENT "Тип  объекта, на который оформляется подписка",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки", 
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки" 
) COMMENT "Подписки";

-- Таблица оценок
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор сроки",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на автора оценки",
  target_id INT UNSIGNED NOT NULL COMMENT "Ссылка на оцениваемый объект",
  target_type_id INT UNSIGNED NOT NULL COMMENT "Тип оцениваемого объекта",
  like_type_id INT UNSIGNED NOT NULL COMMENT "Тип оценки",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки", 
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки" 
) COMMENT "Комментарии";

-- Таблица типов объектов
DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор сроки",
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название типа объекта",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки", 
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки" 
) COMMENT "Типы объектов";

-- Таблица типов оценок
DROP TABLE IF EXISTS like_types;
CREATE TABLE like_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор сроки",
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название типа оценки",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки", 
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки" 
) COMMENT "Типы оценок";

-- Таблица комментариев
DROP TABLE IF EXISTS commentaries;
CREATE TABLE commentaries (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на автора комментария",
  target_id INT UNSIGNED NOT NULL COMMENT "Ссылка на комментируемый объект",
  target_type_id INT UNSIGNED NOT NULL COMMENT "Тип комментируемого объекта",
  body TEXT NOT NULL COMMENT "Текст комментария",
  created_at DATETIME DEFAULT NOW() COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Комментарии";

-- Таблица рейтинга
DROP TABLE IF EXISTS ratings;
CREATE TABLE ratings (
  target_id INT UNSIGNED NOT NULL COMMENT "Ссылка на объект, которому начисляется рейтинг",
  target_type_id INT UNSIGNED NOT NULL COMMENT "Тип объекта, которому начисляется рейтинг",
  rating_value BIGINT NOT NULL DEFAULT 0 COMMENT "Значения рейтинга объекта",
  created_at DATETIME DEFAULT NOW() COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Рейтинги";

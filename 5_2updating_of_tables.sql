USE pikabu;

-- Корректировка данных, сгенерированных автоматически для заполнения таблиц

-- Исправление некорректной даты обновления записей (которая может быть меньше, чем дата создания записи)
UPDATE users SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE commentaries SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE communities SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE likes SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE media SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE media_posts SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE posts SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE ratings SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE subscribes SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE users_private SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;

-- Корректировка данных в таблице media
UPDATE media SET media_type_id = FLOOR(2 + RAND() * 20) WHERE media_type_id = 1;
UPDATE media SET filename = CONCAT(
	'https://dropbox.com/pikabu/',
	filename,
	'.',
	(SELECT name FROM media_types WHERE media_types.id = media.media_type_id ORDER BY RAND() LIMIT 1)
	);

UPDATE media SET size = FLOOR(10000 + RAND() * 1000000);

UPDATE media SET metadata = CONCAT(
	'{"owner":"',
	(SELECT users.nickname FROM users WHERE users.id = media.user_id),
	'"}'
	);

ALTER TABLE media MODIFY COLUMN metadata JSON;
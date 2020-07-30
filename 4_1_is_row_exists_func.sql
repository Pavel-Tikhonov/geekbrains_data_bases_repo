-- Создадим функцию для проверки существования строки
-- с идентификатором target_id в соответствующей таблице
 
DROP FUNCTION IF EXISTS is_row_exists;
DELIMITER //

CREATE FUNCTION is_row_exists (target_id INT, target_type_id INT)
RETURNS BOOLEAN READS SQL DATA

BEGIN
  DECLARE table_name VARCHAR(50);
  SELECT name FROM target_types WHERE id = target_type_id INTO table_name;
  
  CASE table_name
    WHEN 'user' THEN
      RETURN EXISTS(SELECT 1 FROM users WHERE id = target_id);
    WHEN 'post' THEN 
      RETURN EXISTS(SELECT 1 FROM posts WHERE id = target_id);
    WHEN 'commentary' THEN
      RETURN EXISTS(SELECT 1 FROM commentaries WHERE id = target_id);
    WHEN 'community' THEN
      RETURN EXISTS(SELECT 1 FROM communities WHERE id = target_id);
    ELSE 
      RETURN FALSE;
  END CASE;
  
END//

DELIMITER ;


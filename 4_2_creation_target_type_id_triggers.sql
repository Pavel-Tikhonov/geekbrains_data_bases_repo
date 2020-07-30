-- Создадим триггеры для проверки валидности столбцов target_id и target_type_id в нескольких таблицах
DROP TRIGGER IF EXISTS likes_validation;
DROP TRIGGER IF EXISTS subscribes_validation;
DROP TRIGGER IF EXISTS commentaries_validation;
DROP TRIGGER IF EXISTS ratings_validation;

DELIMITER //

CREATE TRIGGER likes_validation BEFORE INSERT ON likes
  FOR EACH ROW 
  BEGIN
	IF (NEW.target_type_id NOT IN (2, 3)) THEN
      SIGNAL SQLSTATE "45000"
      SET MESSAGE_TEXT = "Error adding like! Wrong target_type_id. Target_type_id can be 2(post) or 3(comment).";
    END IF;
    IF !is_row_exists(NEW.target_id, NEW.target_type_id) THEN
      SIGNAL SQLSTATE "45000"
      SET MESSAGE_TEXT = "Error adding like! Target table doesn't contain row id provided!";
    END IF;
  END//

 CREATE TRIGGER subscribes_validation BEFORE INSERT ON subscribes
  FOR EACH ROW 
  BEGIN
	IF (NEW.target_type_id NOT IN (1, 4)) THEN
      SIGNAL SQLSTATE "45000"
      SET MESSAGE_TEXT = "Error adding subscribe! Wrong target_type_id. Target_type_id can be 1(user) or 4(community).";
    END IF;
    IF !is_row_exists(NEW.target_id, NEW.target_type_id) THEN
      SIGNAL SQLSTATE "45000"
      SET MESSAGE_TEXT = "Error adding subscribe! Target table doesn't contain row id provided!";
    END IF;
  END//
 
 CREATE TRIGGER commentaries_validation BEFORE INSERT ON commentaries
  FOR EACH ROW 
  BEGIN
	IF (NEW.target_type_id NOT IN (2, 3)) THEN
      SIGNAL SQLSTATE "45000"
      SET MESSAGE_TEXT = "Error adding commentary! Wrong target_type_id. Target_type_id can be 2(post) or 3(comment).";
    END IF;
    IF !is_row_exists(NEW.target_id, NEW.target_type_id) THEN
      SIGNAL SQLSTATE "45000"
      SET MESSAGE_TEXT = "Error adding commentary! Target table doesn't contain row id provided!";
    END IF;
  END//
  
  CREATE TRIGGER ratings_validation BEFORE INSERT ON ratings
  FOR EACH ROW 
  BEGIN
	IF (NEW.target_type_id NOT IN (1, 2, 3)) THEN
      SIGNAL SQLSTATE "45000"
      SET MESSAGE_TEXT = "Error adding rating! Wrong target_type_id. Target_type_id can be 1(user), 2(post) or 3(comment).";
    END IF;
    IF !is_row_exists(NEW.target_id, NEW.target_type_id) THEN
      SIGNAL SQLSTATE "45000"
      SET MESSAGE_TEXT = "Error adding rating! Target table doesn't contain row id provided!";
    END IF;
  END//
DELIMITER ;
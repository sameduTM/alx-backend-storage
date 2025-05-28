-- SQL script that creates a stored procedure AddBonus
-- that adds a new correction for a student.

DROP PROCEDURE IF EXISTS AddBonus;

DELIMITER $$

CREATE PROCEDURE AddBonus(
    IN user_id INT,
    IN project_name VARCHAR(255),
    IN score FLOAT
)
BEGIN
    DECLARE proj_id INT;

    -- To avoid "no data" error from SELECT INTO
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET proj_id = NULL;

    -- Check if project exists, fetch its id
    SELECT id INTO proj_id
    FROM projects
    WHERE name = project_name
    LIMIT 1;

    -- If no project found, insert it
    IF proj_id IS NULL THEN
        INSERT INTO projects (name) VALUES (project_name);
        SET proj_id = LAST_INSERT_ID();
    END IF;

    -- Insert correction with the resolved project id
    INSERT INTO corrections(user_id, project_id, score)
    VALUES (user_id, proj_id, score);
END$$

DELIMITER ;

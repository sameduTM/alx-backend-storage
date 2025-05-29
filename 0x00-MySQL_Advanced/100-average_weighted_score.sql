-- SQL script that creates a stored procedure ComputeAverageWeightedScoreForUser
-- that computes and store the average weighted score for a student.
DROP PROCEDURE IF EXISTS ComputeAverageWeightedScoreForUser;

DELIMITER $$

CREATE PROCEDURE ComputeAverageWeightedScoreForUser(IN user_id INT)
BEGIN
    UPDATE users
    SET average_score = (
        SELECT SUM(score * weight) / SUM(weight)
        FROM projects
        JOIN corrections ON projects.id = corrections.project_id
        WHERE corrections.user_id = user_id
    )
    WHERE id = user_id;
END$$

DELIMITER ;
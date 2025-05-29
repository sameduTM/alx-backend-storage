-- SQL script that creates a stored procedure ComputeAverageWeightedScoreForUsers
-- that computes and store the average weighted score for all students.
DROP PROCEDURE IF EXISTS ComputeAverageWeightedScoreForUsers;

DELIMITER $$

CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()
BEGIN
    UPDATE users u
    SET u.average_score = (
        SELECT 
            SUM(c.score * p.weight) / SUM(p.weight)
        FROM corrections c
        JOIN projects p ON p.id = c.project_id
        WHERE c.user_id = u.id
    )
    WHERE EXISTS (
        SELECT 1
        FROM corrections c
        WHERE c.user_id = u.id
    );
END$$

DELIMITER ;

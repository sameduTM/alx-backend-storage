-- Add one bonus of an existing project
SELECT * FROM users;
SELECT * FROM projects;
SELECT * FROM corrections;

SELECT "--";

CALL ComputeAverageScoreForUser((SELECT id FROM users WHERE name = "user_0"));

SELECT "--";

SELECT * FROM users;
SELECT * FROM projects;
SELECT * FROM corrections;
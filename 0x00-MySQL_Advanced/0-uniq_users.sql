-- Write a SQL script that creates a table users following these requirements:
-- With these attributes: id, email, name
-- If the table already exists, your script should not fail
CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255)
);

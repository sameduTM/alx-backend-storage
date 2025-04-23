# 0x00. MySQL Advanced

## Short Specializations
**Average:** 20.72%  
**Weight:** 1  
**Project Duration:** Jul 10, 2024, 6:00 AM - Jul 12, 2024, 6:00 AM  
**Auto Review:** An auto review will be launched at the deadline.  

### Project Summary
- **Auto QA Review:** 0.0/53 mandatory & 0.0/8 optional  
- **Altogether:** 0.0%  
    - **Mandatory:** 0.0%  
    - **Optional:** 0.0%  
    - **Calculation:** `0.0% + (0.0% * 0.0%) == 0.0%`

---

## Concepts
This project focuses on the following concept:  
- **Advanced SQL**

---

## Resources
### Read or Watch:
- [MySQL Cheatsheet](https://dev.mysql.com/doc/refman/5.7/en/)
- [MySQL Performance: How To Leverage MySQL Database Indexing](https://www.mysql.com/)
- [Stored Procedure](https://dev.mysql.com/doc/refman/5.7/en/stored-programs.html)
- [Triggers](https://dev.mysql.com/doc/refman/5.7/en/triggers.html)
- [Views](https://dev.mysql.com/doc/refman/5.7/en/create-view.html)
- [Functions and Operators](https://dev.mysql.com/doc/refman/5.7/en/functions.html)
- [Trigger Syntax and Examples](https://dev.mysql.com/doc/refman/5.7/en/trigger-syntax.html)
- [CREATE TABLE Statement](https://dev.mysql.com/doc/refman/5.7/en/create-table.html)
- [CREATE PROCEDURE and CREATE FUNCTION Statements](https://dev.mysql.com/doc/refman/5.7/en/create-procedure.html)
- [CREATE INDEX Statement](https://dev.mysql.com/doc/refman/5.7/en/create-index.html)
- [CREATE VIEW Statement](https://dev.mysql.com/doc/refman/5.7/en/create-view.html)

---

## Learning Objectives
By the end of this project, you should be able to explain the following concepts without external help:
### General:
- How to create tables with constraints.
- How to optimize queries by adding indexes.
- What stored procedures and functions are, and how to implement them in MySQL.
- What views are, and how to implement them in MySQL.
- What triggers are, and how to implement them in MySQL.

---

## Requirements
### General:
- All files will be executed on **Ubuntu 18.04 LTS** using **MySQL 5.7 (version 5.7.30)**.
- All files should end with a new line.
- All SQL queries should include a comment describing the task.
- All SQL keywords should be in uppercase (e.g., `SELECT`, `WHERE`).
- A `README.md` file at the root of the project folder is mandatory.
- File lengths will be tested using `wc`.

---

## More Info
### Comments for SQL Files:
```sql
-- Example: 3 first students in Batch ID=3
-- because Batch 3 is the best!
SELECT id, name FROM students WHERE batch_id = 3 ORDER BY created_at DESC LIMIT 3;
```

### Using “Container-on-Demand” to Run MySQL:
1. Request a container with **Ubuntu 18.04 - Python 3.7**.
2. Connect via SSH or WebTerminal.
3. Start MySQL:
     ```bash
     $ service mysql start
     ```

### Importing a SQL Dump:
```bash
$ echo "CREATE DATABASE hbtn_0d_tvshows;" | mysql -uroot -p
$ curl "https://s3.amazonaws.com/intranet-projects-files/holbertonschool-higher-level_programming+/274/hbtn_0d_tvshows.sql" -s | mysql -uroot -p hbtn_0d_tvshows
$ echo "SELECT * FROM tv_genres" | mysql -uroot -p hbtn_0d_tvshows
```

---

## Tasks
### 0. We are all unique!
- **File:** `0-uniq_users.sql`
- **Description:** Create a table `users` with constraints ensuring unique emails.

### 1. In and not out
- **File:** `1-country_users.sql`
- **Description:** Add a `country` column with enumerated values (`US`, `CO`, `TN`).

### 2. Best band ever!
- **File:** `2-fans.sql`
- **Description:** Rank countries by the number of fans.

### 3. Old school band
- **File:** `3-glam_rock.sql`
- **Description:** List bands with "Glam rock" as their main style, ranked by longevity.

### 4. Buy buy buy
- **File:** `4-store.sql`
- **Description:** Create a trigger to decrease item quantity after an order.

### 5. Email validation to sent
- **File:** `5-valid_email.sql`
- **Description:** Create a trigger to reset `valid_email` when the email changes.

### 6. Add bonus
- **File:** `6-bonus.sql`
- **Description:** Create a stored procedure `AddBonus` to add corrections for students.

### 7. Average score
- **File:** `7-average_score.sql`
- **Description:** Create a stored procedure `ComputeAverageScoreForUser` to calculate average scores.

### 8. Optimize simple search
- **File:** `8-index_my_names.sql`
- **Description:** Create an index on the first letter of names.

### 9. Optimize search and score
- **File:** `9-index_name_score.sql`
- **Description:** Create an index on the first letter of names and scores.

### 10. Safe divide
- **File:** `10-div.sql`
- **Description:** Create a function `SafeDiv` to safely divide two numbers.

### 11. No table for a meeting
- **File:** `11-need_meeting.sql`
- **Description:** Create a view `need_meeting` to list students needing a meeting.

---

## Repository
- **GitHub Repository:** [alx-backend-storage](https://github.com/your-repo-link)
- **Directory:** `0x00-MySQL_Advanced`

---

**Copyright © 2025 ALX. All rights reserved.**

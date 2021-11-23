-- Salaries Differences
-- Write a query that calculates the difference between the highest salaries 
-- found in the marketing and engineering departments. Output just the difference in salaries.

-- Table: db_employee

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | first_name    | varchar |
-- | last_name     | varchar |
-- | salary        | int     |
-- | department_id | int     |
-- +---------------+---------+

-- Table: db_dept

-- +--------------+----------+
-- | Column Name  | Type     |
-- +--------------+----------+
-- | id           | int      |
-- | department   | varchar  |
-- +--------------+----------+

--------------------------------------------------------------------

SELECT (
    (SELECT max(salary) FROM db_employee 
        LEFT JOIN db_dept
        ON db_employee.department_id =  db_dept.id
        WHERE department='marketing'
    )-
    (SELECT max(salary) FROM db_employee 
        left join db_dept
        ON db_employee.department_id =  db_dept.id
        WHERE department='engineering'
    )

)
AS salary_difference

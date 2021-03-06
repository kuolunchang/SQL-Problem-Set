-- Finding Updated Records
-- We have a table with employees and their salaries.
-- However, some of the records are old and contain outdated salary information. 
-- Find the current salary of each employee assuming that salaries increase each year. 
-- Output their id, first name, last name, department ID, and current salary. 
-- Order your list by employee ID in ascending order.

-- Table: ms_employee_salary

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | first_name    | varchar |
-- | last_name     | varchar |
-- | salary        | int     |
-- | department_id | int     |
-- +---------------+---------+


--------------------------------------------------------------------

SELECT id, first_name, last_name,max(salary), department_id 
FROM ms_employee_salary 
GROUP BY id, first_name, last_name, department_id
ORDER BY id

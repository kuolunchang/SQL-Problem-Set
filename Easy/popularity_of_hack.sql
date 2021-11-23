-- Popularity of Hack
-- Find the average popularity of the Hack per office location. 
-- Output the location along with the average popularity.

-- Table: employees

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | location    | varchar |
-- | gender      | varchar |
-- | age         | int     |
-- | is_senior   | bool    |
-- +-------------+---------+

-- Table: hack_survey

-- +-------------+----------+
-- | Column Name | Type     |
-- +-------------+----------+
-- | employee_id | int      |
-- | age         | int      |
-- | gender      | varchar  |
-- | popularity  | int      |
-- +-------------+----------+

--------------------------------------------------------------------

SELECT e.location, avg(h.popularity)
FROM facebook_employees e
JOIN facebook_hack_survey h ON e.id = h.employee_id
GROUP BY e.location


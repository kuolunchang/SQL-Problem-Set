-- Find the number of apartments per nationality that are owned by people under 30 years old.
-- Output the nationality along with the number of apartments.
-- Sort records by the apartments count in descending order.

-- Table: hosts

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | host_id       | int     |
-- | nationality   | varchar |
-- | gender        | varchar |
-- | age           | int     |
-- +---------------+---------+

-- Table: units

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | host_id       | int     |
-- | unit_id       | varchar |
-- | unit_type     | varchar |
-- | n_beds        | int     |
-- | n_bedrooms    | int     |
-- | country       | varchar |
-- | city          | varchar |
-- +---------------+---------+

--------------------------------------------------------------------

SELECT 
	h.nationality, 
	count(u.unit_id)
FROM 
	hosts h
JOIN 
	units u
ON 
	h.host_id = u.host_id
WHERE 
	h.age<30, 
	u.unit_type = 'Apartment'
GROUP BY
	h.nationality
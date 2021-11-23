-- Number of Bathrooms and Bedrooms
-- Find the average number of bathrooms and bedrooms for each city’s property types. 
-- Output the result along with the city name and the property type.

-- Table: airbnb_search_details

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | property_type | varchar |
-- | bathrooms     | int     |
-- | bedrooms      | int     |
-- | room_type     | varchar |
-- +---------------+---------+


--------------------------------------------------------------------

SELECT city, property_type, avg(bathrooms) as avg_bathroom, avg(bedrooms) as avg_bedroom
FROM airbnb_search_details
GROUP BY property_type, city

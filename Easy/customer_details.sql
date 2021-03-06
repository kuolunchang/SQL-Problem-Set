-- Customer Details
-- Find the details of each customer regardless of whether the customer made an order. 
-- Output the customer's first name, last name, and the city along with the order details.
-- You may have duplicate rows in your results due to a customer ordering several of the same items.
-- Sort records based on the customer's first name and the order details in ascending order.

-- Table: customers

-- +---------------+---------+
-- | Column Nam e  | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | first_name    | varchar |
-- | last_name     | varchar |
-- | city          | varchar |
-- | address       | varchar |
-- | phone_number  | varchar |
-- +---------------+---------+

-- Table: orders

-- +-----------------+----------+
-- | Column Name     | Type     |
-- +-----------------+----------+
-- | id              | int      |
-- | cust_id         | int      |
-- | order_date      | datetime |
-- | order_details   | varchar  |
-- | total_order_cost|  int     |
-- +-----------------+----------+

--------------------------------------------------------------------

SELECT first_name, last_name, city, order_details
FROM customers
LEFT JOIN orders ON customers.id= orders.cust_id
ORDER BY first_name, order_details

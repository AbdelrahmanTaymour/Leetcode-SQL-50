-- https://leetcode.com/problems/recyclable-and-low-fat-products

-- Postgress & SQL Server solution
SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';
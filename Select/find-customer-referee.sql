-- https://leetcode.com/problems/find-customer-referee/

-- Postgres & SQL Server query
SELECT name
FROM Customer
WHERE referee_id <> 2 OR referee_id IS NULL


-- Postgres query
SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL
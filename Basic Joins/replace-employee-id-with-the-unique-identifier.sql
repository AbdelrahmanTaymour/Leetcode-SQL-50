-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/

-- Postgres & SQL Server query
SELECT unique_id, name 
FROM Employees E
LEFT JOIN EmployeeUNI EN
ON E.id = EN.id;
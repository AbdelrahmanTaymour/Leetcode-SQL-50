-- https://leetcode.com/problems/rising-temperature/

-- SQL Server query
SELECT w1.id AS Id
FROM Weather w1, Weather w2 
WHERE DATEDIFF(day, w2.recordDate, w1.recordDate) = 1 
AND w1.temperature > w2.temperature;


-- Optamization(SQL Server): Using WHERE clause instead of JOIN to improve performance
SELECT current_day.id
FROM Weather AS current_day
WHERE EXISTS (
    SELECT 1
    FROM Weather AS yesterday
    WHERE current_day.temperature > yesterday.temperature
    AND current_day.recordDate = DATEADD(day, 1, yesterday.recordDate)
);



-- Postgres
SELECT w2.id
FROM Weather w2
JOIN Weather w1 ON w2.recordDate = w1.recordDate + INTERVAL '1 day'
WHERE w2.temperature > w1.temperature;


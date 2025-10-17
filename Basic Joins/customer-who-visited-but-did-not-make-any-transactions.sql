-- https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/

-- Postgres & SQL Server query
SELECT customer_id, COUNT(*) AS count_no_trans
FROM Visits V
LEFT JOIN Transactions T ON V.visit_id = T.visit_id
WHERE transaction_id IS NULL
GROUP BY customer_id;



-- Optimaization: Using NOT EXISTS instead of LEFT JOIN to improve performance
SELECT v.customer_id, COUNT(*) AS count_no_trans
FROM Visits v
WHERE NOT EXISTS (
    SELECT 1
    FROM Transactions t
    WHERE t.visit_id = v.visit_id
)
GROUP BY v.customer_id;
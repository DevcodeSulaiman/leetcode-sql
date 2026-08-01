# Write your MySQL query statement below
SELECT
    vis.customer_id,
    COUNT(*) AS count_no_trans
FROM Visits vis
LEFT JOIN Transactions tra
    ON vis.visit_id = tra.visit_id
WHERE tra.transaction_id IS NULL
GROUP BY vis.customer_id;
WITH min_date AS (
    SELECT
        user_id,
        created_at,
        ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY created_at) AS rn,
        MIN(created_at) OVER (PARTITION BY user_id) AS min_date
    FROM amazon_transactions
)

SELECT user_id FROM (
    SELECT
        user_id,
        (created_at - min_date) AS diff
    FROM min_date
    WHERE rn = 2
)
WHERE diff BETWEEN 1 AND 7
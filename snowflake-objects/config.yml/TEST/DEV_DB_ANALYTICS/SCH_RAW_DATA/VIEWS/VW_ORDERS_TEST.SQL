WITH TBL_CUSTOMERS AS (
    SELECT * FROM VALUES
        (1, 'Ram'),
        (2, 'Sita')
    AS T(customer_id, customer_name)
),
TBL_ORDERS AS (
    SELECT * FROM VALUES
        (101, 1, 200),
        (102, 1, 100),
        (103, 2, 300)
    AS T(order_id, customer_id, order_amount)
)
SELECT
    o.order_id,
    c.customer_id,
    c.customer_name,
    o.order_amount
FROM TBL_ORDERS o
JOIN TBL_CUSTOMERS c
    ON o.customer_id = c.customer_id;
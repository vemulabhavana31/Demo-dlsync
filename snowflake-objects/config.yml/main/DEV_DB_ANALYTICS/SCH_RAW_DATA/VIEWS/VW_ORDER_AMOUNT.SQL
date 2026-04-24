CREATE OR REPLACE VIEW ${MY_DB}.SCH_RAW_DATA.VW_ORDER_AMOUNT AS
SELECT
    customer_id,
    customer_name,
    SUM(order_amount) AS total_order_amount
FROM ${MY_DB}.SCH_RAW_DATA.VW_ORDERS
GROUP BY customer_id, customer_name;
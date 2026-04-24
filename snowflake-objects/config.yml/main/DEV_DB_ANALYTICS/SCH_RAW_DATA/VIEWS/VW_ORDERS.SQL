CREATE OR REPLACE VIEW ${MY_DB}.SCH_RAW_DATA.VW_ORDERS AS
SELECT
    o.order_id,
    c.customer_id,
    c.customer_name,
    o.order_amount
FROM ${MY_DB}.SCH_RAW_DATA.TBL_ORDERS o
JOIN ${MY_DB}.SCH_RAW_DATA.TBL_CUSTOMERS c
    ON o.customer_id = c.customer_id;
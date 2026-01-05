
CREATE OR REPLACE VIEW v_monthly_kpi AS
SELECT DATE_TRUNC('month', order_date)::date AS month,
COUNT(order_id) orders,
SUM(quantity * unit_price) revenue
FROM orders
WHERE status IN ('Completed','Shipped')
GROUP BY 1 ORDER BY 1;

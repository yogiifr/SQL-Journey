/*
You're trying to find the mean number of items per order on Alibaba, rounded to 1 decimal place using tables which includes information on the count of items in each order (item_count table) and the corresponding number of orders for each item count (order_occurrences table).
*/

WITH data AS (
SELECT
  SUM(1.0*order_occurrences*item_count) AS total_items,
  SUM(order_occurrences) AS total_orders
FROM items_per_order
)

SELECT ROUND(CAST(total_items/total_orders AS DECIMAL), 1) AS mean
FROM dataSELECT ROUND(CAST(SUM(item_count*order_occurrences)/SUM(order_occurrences) AS DECIMAL),1) AS mean
FROM items_per_order;SELECT ROUND( SUM(item_count*order_occurrences)::numeric / SUM(order_occurrences), 1) AS mean
FROM items_per_order;
-- Total Revenue
SELECT SUM(Amount) AS total_revenue
FROM orders_sample;

-- Total Orders
SELECT COUNT(DISTINCT "Order ID") AS total_orders
FROM orders_sample;

-- Monthly Revenue
SELECT DATE_TRUNC('month', "Date") AS month,
       SUM(Amount) AS revenue
FROM orders_sample
GROUP BY month
ORDER BY month;

-- Top Categories
SELECT Category,
       SUM(Amount) AS revenue
FROM orders_sample
GROUP BY Category
ORDER BY revenue DESC
LIMIT 10;

-- Top States
SELECT "ship-state",
       SUM(Amount) AS revenue
FROM orders_sample
GROUP BY "ship-state"
ORDER BY revenue DESC
LIMIT 10;

-- Order Status
SELECT Status,
       COUNT(*) AS total_orders
FROM orders_sample
GROUP BY Status;

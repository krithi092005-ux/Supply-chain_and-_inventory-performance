DROP TABLE IF EXISTS supply_chain;

CREATE TABLE supply_chain (
    date DATE,
    region VARCHAR(50),
    category VARCHAR(50),
    supplier VARCHAR(50),
    warehouse VARCHAR(50),
    order_status VARCHAR(50),
    units_sold INTEGER,
    inventory_level INTEGER,
    transportation_cost NUMERIC(12,2),
    order_accuracy BOOLEAN,
    lead_time_days INTEGER,
    backorder BOOLEAN,
    cost_of_goods_sold_cogs NUMERIC(12,2),
    average_inventory NUMERIC(12,2),
    warehouse_capacity INTEGER
);

SELECT COUNT(*) AS total_rows
FROM supply_chain;

SELECT *
FROM supply_chain
LIMIT 10;

SELECT current_database();
SELECT COUNT(*) FROM supply_chain;
SELECT * FROM supply_chain LIMIT 5;

SELECT COUNT(*) AS total_rows
FROM supply_chain;

COPY supply_chain
FROM 'C:\Users\krith\Supply_Chain_Final.csv'
WITH (
    FORMAT csv,
    HEADER true,
    DELIMITER ',',
    QUOTE '"'
);

SELECT SUM(inventory_level) AS total_inventory
FROM supply_chain;

SELECT SUM(transportation_cost) AS total_transportation_cost
FROM supply_chain;

SELECT ROUND(AVG(lead_time_days), 2) AS average_lead_time
FROM supply_chain;

SELECT 
    ROUND(
        100.0 * SUM(CASE WHEN backorder = TRUE THEN 1 ELSE 0 END) 
        / COUNT(*),
        2
    ) AS backorder_rate
FROM supply_chain;


SELECT 
    ROUND(
        100.0 * SUM(CASE WHEN order_accuracy = TRUE THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS order_accuracy_rate
FROM supply_chain;

SELECT
    region,
    SUM(units_sold) AS total_units_sold
FROM supply_chain
GROUP BY region
ORDER BY total_units_sold DESC;

SELECT
    category,
    SUM(units_sold) AS total_units_sold
FROM supply_chain
GROUP BY category
ORDER BY total_units_sold DESC;

SELECT
    warehouse,
    SUM(inventory_level) AS total_inventory
FROM supply_chain
GROUP BY warehouse
ORDER BY total_inventory DESC;

SELECT
    supplier,
    ROUND(AVG(lead_time_days), 2) AS average_lead_time
FROM supply_chain
GROUP BY supplier
ORDER BY average_lead_time DESC;

SELECT
    supplier,
    SUM(CASE WHEN backorder = TRUE THEN 1 ELSE 0 END) AS total_backorders
FROM supply_chain
GROUP BY supplier
ORDER BY total_backorders DESC;

SELECT
    supplier,
    ROUND(
        100.0 * SUM(CASE WHEN order_accuracy = TRUE THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS order_accuracy_rate
FROM supply_chain
GROUP BY supplier
ORDER BY order_accuracy_rate DESC;
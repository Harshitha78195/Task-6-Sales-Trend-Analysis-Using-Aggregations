-- Create the table
CREATE TABLE online_sales (
    order_id SERIAL PRIMARY KEY,
    order_date DATE NOT NULL,
    amount NUMERIC(10,2),
    product_id INT
);

-- Insert 20 sample rows
INSERT INTO online_sales (order_date, amount, product_id) VALUES
('2024-01-15', 120.00, 101),
('2024-01-20', 75.50, 102),
('2024-02-10', 150.00, 103),
('2024-02-22', 200.00, 104),
('2024-03-05', 95.00, 101),
('2024-03-10', 50.00, 102),
('2024-03-15', 180.00, 105),
('2024-04-01', 130.00, 106),
('2024-04-12', 210.00, 107),
('2024-04-20', 60.00, 108),
('2024-05-03', 160.00, 103),
('2024-05-18', 75.00, 104),
('2024-06-09', 145.00, 101),
('2024-06-14', 80.00, 102),
('2024-07-07', 90.00, 108),
('2024-07-21', 100.00, 107),
('2024-08-11', 55.00, 106),
('2024-08-25', 180.00, 105),
('2024-09-30', 220.00, 104),
('2024-10-05', 95.00, 103);

-- Extracting month from order_date
SELECT 
    order_id, 
    order_date, 
    EXTRACT(MONTH FROM order_date) AS order_month
FROM 
    online_sales;

-- GROUP BY year/month
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    year, month;

-- SUM() for Monthly Revenue
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    year, month;

--COUNT(DISTINCT order_id) for volume
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    year, month;

-- Use ORDER BY for sorting
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    monthly_revenue DESC;

-- Limit Results for Specific Time Periods 
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
WHERE 
    order_date BETWEEN '2024-03-01' AND '2024-06-30'
GROUP BY 
    year, month
ORDER BY 
    year, month;








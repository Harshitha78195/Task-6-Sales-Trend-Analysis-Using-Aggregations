# Sales Trend Analysis using PostgreSQL

## Objective
Analyze **monthly revenue** and **order volume** from an `online_sales` dataset using SQL aggregation techniques.

---

## Tools Used
- **PostgreSQL**
- SQL queries (GROUP BY, SUM, COUNT, EXTRACT, ORDER BY, WHERE)

---

## Dataset Overview
Table: `online_sales`

| Column Name | Description              |
|-------------|--------------------------|
| order_id    | Unique order identifier  |
| order_date  | Date of the order        |
| amount      | Order amount (revenue)   |
| product_id  | ID of the product ordered|

Sample data contains **20 rows** of orders from Jan to Oct 2024.

---

## Queries Implemented

1. **Extract Month:**
   - Used `EXTRACT(MONTH FROM order_date)` to extract the month from dates.

2. **Group by Year/Month:**
   - Grouped data using `EXTRACT(YEAR)` and `EXTRACT(MONTH)` to prepare for monthly aggregation.

3. **Monthly Revenue:**
   - Calculated using `SUM(amount)`.

4. **Monthly Order Volume:**
   - Counted using `COUNT(DISTINCT order_id)`.

5. **Sorted Results:**
   - Used `ORDER BY` to sort by revenue or month/year.

6. **Filtered Time Period:**
   - Used `WHERE` with `BETWEEN` to limit results to a specific period (e.g., March–June 2024).

---

## Example Output

| year | month | monthly_revenue | order_volume |
|------|-------|------------------|---------------|
| 2024 | 3     | 325.00           | 3             |
| 2024 | 4     | 400.00           | 3             |

---

## Notes
- Queries follow best practices using **aggregations** and **date functions**.
- Ideal for use in sales dashboards, forecasting, or business reporting.

---



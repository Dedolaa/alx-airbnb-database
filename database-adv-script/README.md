# Advanced SQL Queries – Airbnb Database

This directory contains advanced SQL queries demonstrating JOINs and SUBQUERIES on the Airbnb schema.

---

## 📄 Files

### 1. `joins_queries.sql`
- INNER JOIN: Bookings and Users
- LEFT JOIN: Properties and Reviews (with `ORDER BY`)
- FULL OUTER JOIN: Users and Bookings (PostgreSQL and MySQL-friendly version)

### 2. `subqueries.sql`
- **Non-correlated subquery**: Finds properties with an average rating above 4.0.
- **Correlated subquery**: Finds users who have made more than 3 bookings.

---

## ▶️ How to Run

Make sure you’ve created the schema and inserted sample data.

Then execute the queries in your SQL client:

```sql
\i joins_queries.sql      -- or subqueries.sql

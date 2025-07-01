# Advanced SQL Join Queries

## 📄 File: `joins_queries.sql`

This script contains SQL queries using various types of **JOINs** to demonstrate relationships in the Airbnb database.

---

## 🔍 Queries Included

### 1. INNER JOIN – Users and Bookings
Fetches all bookings and the users who made them. Only records with matches in both tables are returned.

### 2. LEFT JOIN – Properties and Reviews
Fetches all properties, including those with no reviews. This is helpful when analyzing unrated listings.

### 3. FULL OUTER JOIN – All Users and Bookings
Fetches:
- All users, even if they have no bookings.
- All bookings, even if not assigned to any user.

📌 Note: Since MySQL does not support `FULL OUTER JOIN`, a UNION of `LEFT JOIN` and `RIGHT JOIN` is included as an alternative.

---

## ▶️ How to Run

1. Open your SQL client or terminal.
2. Ensure you’ve already created the schema and inserted sample data.
3. Run the script:

```sql
\i joins_queries.sql      -- PostgreSQL
SOURCE joins_queries.sql  -- MySQL

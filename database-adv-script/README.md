# Aggregations and Window Functions – Airbnb Database

This file contains advanced SQL queries using aggregation and window functions for analysis purposes.

---

## 📄 File: `aggregations_and_window_functions.sql`

### ✅ Query 1: Total Bookings per User
- Uses `COUNT()` and `GROUP BY` to calculate the number of bookings per user.

### ✅ Query 2: Rank Properties by Booking Count
- Uses the `RANK()` window function to order properties by number of bookings in descending order.

---

## ▶️ How to Run

Ensure your database has schema and data loaded.

Run the script using:

```sql
\i aggregations_and_window_functions.sql

# Index Optimization & Performance Analysis

## ✅ Objective

Optimize query performance by identifying and indexing frequently queried columns in the Airbnb database.

---

## 🔍 Index Strategy

We analyzed the schema and typical usage patterns. Indexes were added to:

- **User Table**
  - `email`: used for login/auth checks.
- **Booking Table**
  - `user_id`, `property_id`: used in JOINs and filters.
  - `status`: common filter for "confirmed", "pending" bookings.
  - `start_date`, `end_date`: useful in range queries.
- **Property Table**
  - `host_id`: JOIN with users.
  - `location`, `pricepernight`: user searches and filters.

---

## ⚙️ Performance Measurement (EXPLAIN)

### 🔽 BEFORE Indexing

```sql
EXPLAIN SELECT * FROM Booking WHERE user_id = '000...002';
-- Result: Seq Scan on Booking, cost=0.00..140.00, rows=1000

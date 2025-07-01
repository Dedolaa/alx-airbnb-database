# Partitioning Performance Report

## 🎯 Objective

To improve query performance on the large `Booking` table by partitioning it using the `start_date` column.

---

## ⚙️ Implementation

- Renamed the original `Booking` table.
- Recreated the `Booking` table with **RANGE partitioning** on `start_date`.
- Created partitions:
  - `Booking_2023`
  - `Booking_2024`
  - `Booking_2025`

---

## 🔍 Query Performance Test

**Query Used**:

```sql
SELECT * FROM Booking
WHERE start_date BETWEEN '2024-06-01' AND '2024-07-01';

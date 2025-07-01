# 📊 Database Performance Monitoring Report

## ✅ Objective

Continuously monitor and optimize frequently used queries using `EXPLAIN ANALYZE` to detect bottlenecks and implement schema/index adjustments.

---

## 🧪 Monitored Queries

### 🔍 Query 1: Get Bookings by User

```sql
EXPLAIN ANALYZE
SELECT * FROM Booking
WHERE user_id = '00000000-0000-0000-0000-000000000002';

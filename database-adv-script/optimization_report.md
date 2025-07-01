# Optimization Report – Booking Query

## ✅ Objective

Optimize a complex query joining bookings, users, properties, and payments to improve performance.

---

## 🧪 Initial Query (Unoptimized)

```sql
SELECT * FROM Booking 
JOIN User ON Booking.user_id = User.user_id 
JOIN Property ON Booking.property_id = Property.property_id 
JOIN Payment ON Booking.booking_id = Payment.booking_id;

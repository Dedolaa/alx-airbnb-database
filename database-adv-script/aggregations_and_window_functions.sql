-- ============================================
-- 1. AGGREGATION QUERY:
-- Total number of bookings made by each user
-- ============================================
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    COUNT(b.booking_id) AS total_bookings
FROM User u
LEFT JOIN Booking b ON u.user_id = b.user_id
GROUP BY u.user_id, u.first_name, u.last_name
ORDER BY total_bookings DESC;

-- ============================================
-- 2. WINDOW FUNCTION QUERY (ROW_NUMBER):
-- Assigns unique row numbers to properties ordered by booking count
-- ============================================
SELECT 
    p.property_id,
    p.name,
    COUNT(b.booking_id) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(b.booking_id) DESC) AS row_num
FROM Property p
LEFT JOIN Booking b ON p.property_id = b.property_id
GROUP BY p.property_id, p.name
ORDER BY row_num;

-- ============================================
-- 3. WINDOW FUNCTION QUERY (RANK):
-- Ranks properties based on booking count, ties share the same rank
-- ============================================
SELECT 
    p.property_id,
    p.name,
    COUNT(b.booking_id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS rank_num
FROM Property p
LEFT JOIN Booking b ON p.property_id = b.property_id
GROUP BY p.property_id, p.name
ORDER BY rank_num;

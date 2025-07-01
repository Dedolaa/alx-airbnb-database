
-- ============================================
-- 1. INNER JOIN: Get all bookings and their users
-- ============================================
SELECT 
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    Booking.status,
    User.user_id,
    User.first_name,
    User.last_name,
    User.email
FROM Booking
INNER JOIN User ON Booking.user_id = User.user_id
ORDER BY Booking.booking_id;

-- ============================================
-- 2. LEFT JOIN: Get all properties and their reviews (even if no review exists)
-- ============================================
SELECT 
    Property.property_id,
    Property.name,
    Property.location,
    Review.review_id,
    Review.rating,
    Review.comment
FROM Property
LEFT JOIN Review ON Property.property_id = Review.property_id
ORDER BY Property.property_id;

-- ============================================
-- 3. FULL OUTER JOIN: Get all users and all bookings (even if unrelated)
-- PostgreSQL version
-- ============================================
SELECT 
    User.user_id,
    User.first_name,
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date
FROM User
FULL OUTER JOIN Booking ON User.user_id = Booking.user_id
ORDER BY User.user_id;

-- ============================================
-- MySQL-compatible FULL OUTER JOIN workaround (commented)
-- Uncomment below if you're using MySQL
-- ============================================
-- SELECT 
--     User.user_id,
--     User.first_name,
--     Booking.booking_id,
--     Booking.start_date,
--     Booking.end_date
-- FROM User
-- LEFT JOIN Booking ON User.user_id = Booking.user_id
-- UNION
-- SELECT 
--     User.user_id,
--     User.first_name,
--     Booking.booking_id,
--     Booking.start_date,
--     Booking.end_date
-- FROM User
-- RIGHT JOIN Booking ON User.user_id = Booking.user_id
-- ORDER BY user_id;

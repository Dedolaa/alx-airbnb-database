-- =====================
-- Insert Users
-- =====================
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('00000000-0000-0000-0000-000000000001', 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw_1', '08012345678', 'host'),
  ('00000000-0000-0000-0000-000000000002', 'Bob', 'Smith', 'bob@example.com', 'hashed_pw_2', '08123456789', 'guest'),
  ('00000000-0000-0000-0000-000000000003', 'Catherine', 'Lee', 'catlee@example.com', 'hashed_pw_3', '09087654321', 'admin');

-- =====================
-- Insert Properties
-- =====================
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', 'Seaside Villa', 'A beautiful villa by the sea.', 'Lagos, Nigeria', 150.00),
  ('10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', 'Mountain Cabin', 'Cozy cabin in the mountains.', 'Jos, Nigeria', 100.00);

-- =====================
-- Insert Bookings
-- =====================
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', '2025-07-10', '2025-07-12', 300.00, 'confirmed'),
  ('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000002', '2025-08-01', '2025-08-03', 200.00, 'pending');

-- =====================
-- Insert Payments
-- =====================
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('30000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', 300.00, 'credit_card');

-- =====================
-- Insert Reviews
-- =====================
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('40000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', 5, 'Amazing place!');

-- =====================
-- Insert Messages
-- =====================
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('50000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', 'Hello, is the villa available for extra days?');

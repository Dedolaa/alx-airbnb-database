-- =============================
-- Indexes for the User table
-- =============================
CREATE INDEX idx_user_email ON User(email);

-- =============================
-- Indexes for the Booking table
-- =============================
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_status ON Booking(status);
CREATE INDEX idx_booking_dates ON Booking(start_date, end_date);

-- =============================
-- Indexes for the Property table
-- =============================
CREATE INDEX idx_property_host_id ON Property(host_id);
CREATE INDEX idx_property_location ON Property(location);
CREATE INDEX idx_property_price ON Property(pricepernight);

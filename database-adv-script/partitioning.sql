-- ============================================
-- STEP 1: Rename original table for backup
-- ============================================
ALTER TABLE Booking RENAME TO Booking_backup;

-- ============================================
-- STEP 2: Create new partitioned Booking table
-- ============================================
CREATE TABLE Booking (
    booking_id UUID PRIMARY KEY,
    property_id UUID REFERENCES Property(property_id),
    user_id UUID REFERENCES User(user_id),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL NOT NULL,
    status VARCHAR NOT NULL CHECK (status IN ('pending', 'confirmed', 'canceled')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) PARTITION BY RANGE (start_date);

-- ============================================
-- STEP 3: Create partitions by year
-- ============================================
CREATE TABLE Booking_2023 PARTITION OF Booking
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE Booking_2024 PARTITION OF Booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE Booking_2025 PARTITION OF Booking
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- ============================================
-- STEP 4: Optional - Restore data (if needed)
-- ============================================
-- INSERT INTO Booking (...)
-- SELECT * FROM Booking_backup;

-- ============================================
-- STEP 5: Test partitioned table with EXPLAIN
-- ============================================
EXPLAIN ANALYZE
SELECT * FROM Booking
WHERE start_date BETWEEN '2024-06-01' AND '2024-07-01';

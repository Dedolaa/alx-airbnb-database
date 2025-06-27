
# Airbnb ERD Requirements

This document outlines the entity-relationship diagram (ERD) design for the Airbnb database project. The design includes the following entities and their respective attributes:

## Entities

### 1. User
- user_id (Primary Key)
- first_name
- last_name
- email (Unique)
- password_hash
- phone_number
- role (ENUM: guest, host, admin)
- created_at

### 2. Property
- property_id (Primary Key)
- host_id (Foreign Key → User.user_id)
- name
- description
- location
- pricepernight
- created_at
- updated_at

### 3. Booking
- booking_id (Primary Key)
- property_id (Foreign Key → Property.property_id)
- user_id (Foreign Key → User.user_id)
- start_date
- end_date
- total_price
- status (ENUM: pending, confirmed, canceled)
- created_at

### 4. Payment
- payment_id (Primary Key)
- booking_id (Foreign Key → Booking.booking_id)
- amount
- payment_date
- payment_method (ENUM: credit_card, paypal, stripe)

### 5. Review
- review_id (Primary Key)
- property_id (Foreign Key → Property.property_id)
- user_id (Foreign Key → User.user_id)
- rating (CHECK: 1–5)
- comment
- created_at

### 6. Message
- message_id (Primary Key)
- sender_id (Foreign Key → User.user_id)
- recipient_id (Foreign Key → User.user_id)
- message_body
- sent_at

## Notes
- All primary keys are UUIDs and indexed.
- Unique constraint on email in the User table.
- Appropriate foreign key constraints enforce referential integrity.
- Enum and check constraints ensure data validity.
- Indexing on frequently queried fields (e.g., email, property_id, booking_id).

[Download the ERD Diagram (PDF)](./airbnb_erd.pdf)

Please download and open the PDF to view the complete entity-relationship diagram for the Airbnb database.

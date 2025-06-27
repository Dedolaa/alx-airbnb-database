# Airbnb Database Schema

This SQL script (`schema.sql`) defines the database schema for a simplified Airbnb platform. It includes the necessary `CREATE TABLE` statements to model the following entities:

- **User**
- **Property**
- **Booking**
- **Payment**
- **Review**
- **Message**

Each table includes appropriate:
- Data types
- Primary and foreign keys
- Constraints (e.g., ENUMs, CHECKs)
- Indexes for optimization

---

## 🧱 Tables and Relationships

- `User`: Stores user information. Can act as a host or guest.
- `Property`: Listings created by users with role `host`.
- `Booking`: Records when a guest books a property.
- `Payment`: Linked to a booking and records the transaction.
- `Review`: Feedback left by a guest after a stay.
- `Message`: Communication between users.

---

## 🛠️ How to Use the SQL File

### ✅ Prerequisites
- A running instance of **PostgreSQL** or **MySQL**
- A database to execute the schema in

### ✅ Steps

1. Open your SQL client or terminal.
2. Create a new database (optional but recommended):
   ```sql
   CREATE DATABASE airbnb_clone;
   \c airbnb_clone; -- for PostgreSQL

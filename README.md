# 🏠 Airbnb Database Management System

> **Development Phase / Reflection Phase**
> A complete relational database system for an Airbnb-style platform, implemented in MySQL Workbench.

---

## 📌 Project Overview

This project is the **Development Phase** implementation of an Airbnb-style Database Management System. The system was designed and implemented in **MySQL Workbench** based on the Entity-Relationship (ER) model prepared in Phase 1.

The database supports core platform operations including:

- User management (Guest, Host, Admin roles)
- Property and Room listing
- Booking and Payment processing
- Review and Wishlist functionality
- Messaging, Cancellations, Discounts, and Amenities

> ✅ Every table contains **at least 20 entries** as required by IU International University of Applied Sciences.

---

## 🎯 Project Objective

The main objective of this Development Phase is to:

- Implement a complete, working relational database for the Airbnb use case
- Transform the conceptual ER design into functional SQL tables and relationships
- Populate the database with valid sample data
- Validate the implementation through structured SQL test cases
- Document the full process clearly for academic evaluation

---

## 🛠️ Tools and Technologies

| Tool / Technology | Purpose |
|---|---|
| MySQL Workbench | Database design and SQL execution |
| SQL | Schema creation, data insertion, testing |
| dbdiagram.io | ER diagram design (Phase 1) |
| GitHub | Project file organization and submission |

---

## 🗄️ Database Name

```sql
airbnb_db
```

---

## 📁 Project File Structure

```
airbnb/
├── 01_schema.sql               # Database and table creation
├── 02_data.sql                 # Sample data insertion (20+ records per table)
├── 03_constraints_relations.sql # Foreign key constraints and relationships
├── testing.sql                 # SQL test cases and validation queries
└── README.md                   # Project documentation
```

---

## 📄 File Descriptions

### `01_schema.sql` — Database Schema
Contains the complete database structure definition.

- Creates the `airbnb_db` database
- Selects the database using `USE airbnb_db`
- Includes `CREATE TABLE` statements for all **20 tables**

---

### `02_data.sql` — Sample Data
Contains all data insertion statements.

- `INSERT INTO` statements for all 20 tables
- **Minimum 20 records** per table
- Sample records designed for system testing and validation

---

### `03_constraints_relations.sql` — Relationships
Contains all foreign key constraints.

- `ALTER TABLE` statements
- Foreign key definitions
- Relational links between parent and child tables

---

### `testing.sql` — Test Cases
Contains SQL queries for validation.

- Display queries for all 20 tables
- Record count validation queries
- JOIN queries for relationship testing
- Business logic testing queries
- Minimum 20 record validation (IU requirement compliance)

---

### `README.md` — Documentation
This file. Explains the project structure, execution order, tools used, and implementation summary.

---

## 🗂️ Implemented Tables (20 Tables)

| # | Table Name | Description |
|---|---|---|
| 1 | `users` | Core user account data |
| 2 | `guests` | Guest-specific user role |
| 3 | `hosts` | Host-specific user role |
| 4 | `admins` | Admin-specific user role |
| 5 | `countries` | Country reference data |
| 6 | `cities` | City reference data linked to countries |
| 7 | `properties` | Property listings by hosts |
| 8 | `addresses` | Physical addresses for properties |
| 9 | `rooms` | Individual room listings under properties |
| 10 | `payment_methods` | Available payment methods |
| 11 | `bookings` | Booking records for rooms by guests |
| 12 | `payments` | Payment records linked to bookings |
| 13 | `amenities` | Available amenity types |
| 14 | `property_amenities` | Bridge table: properties ↔ amenities |
| 15 | `availability_calendar` | Room availability schedules |
| 16 | `cancellations` | Booking cancellation records |
| 17 | `discounts` | Discounts applied to properties |
| 18 | `messages` | Messages between users on bookings |
| 19 | `wishlists` | Guest wishlists of saved properties |
| 20 | `reviews` | Guest reviews for bookings and properties |

---

## 🔗 Relationship Design

The database uses **Primary Keys** and **Foreign Keys** to maintain relational integrity.

Key relationships include:

```
users          ──< guests, hosts, admins
countries      ──< cities
hosts          ──< properties
properties     ──< addresses, rooms, discounts, property_amenities, wishlists
cities         ──< addresses
rooms          ──< bookings, availability_calendar
guests         ──< bookings, wishlists, reviews
bookings       ──< payments, cancellations, messages, reviews
payment_methods──< payments
amenities      ──< property_amenities
users          ──< messages
```

---

## ▶️ Execution Order

> ⚠️ Files **must** be executed in this order to avoid foreign key errors.

```
1. 01_schema.sql               ← Create database and all tables
2. 03_constraints_relations.sql ← Add foreign key constraints
3. 02_data.sql                  ← Insert sample data (parent tables first)
4. testing.sql                  ← Run validation and test queries
```

---

## 🚀 How to Run the Project in MySQL Workbench

**Step 1:** Open MySQL Workbench and connect to your MySQL server.

**Step 2:** Open a new SQL tab. Run `01_schema.sql` to create the database and all 20 tables.

**Step 3:** Run `03_constraints_relations.sql` to apply all foreign key constraints between tables.

**Step 4:** Run `02_data.sql` to insert the sample records. Parent tables are populated before child tables.

**Step 5:** Run `testing.sql` to display table contents, verify relationships, and confirm the minimum record count for every table.

---

## ✅ Testing and Validation

The `testing.sql` file covers the following validations:

- [x] Display all 20 tables
- [x] Check all inserted records
- [x] Validate JOIN operations between related tables
- [x] Verify foreign key relationships
- [x] Test booking and payment relations
- [x] Test property and amenity relations
- [x] Test wishlist and review relations
- [x] Validate cancellations and discounts
- [x] Check availability and messages
- [x] Confirm every table has **at least 20 records** ✅

---

## 📋 IU Requirement Compliance

| Requirement | Status |
|---|---|
| All SQL statements written and documented | ✅ Done |
| All tables implemented per ER diagram | ✅ Done |
| Every table has at least 20 entries | ✅ Done |
| At least one test case provided | ✅ Done |
| Implementation ready for presentation | ✅ Done |

---

## ⚙️ Implementation Procedure

The implementation was completed in the following structured steps:

1. Created `airbnb_db` in MySQL Workbench
2. Created all 20 tables using SQL schema statements
3. Added foreign key constraints between parent and child tables
4. Inserted sample data — parent tables first, then child tables
5. Executed testing queries to verify structure, relationships, and data

---

## 🔑 Key Features

- ✅ User account management with role-based access (Guest, Host, Admin)
- ✅ Property and room listing with location support
- ✅ Booking and payment processing
- ✅ Amenities tracking per property
- ✅ Room availability calendar
- ✅ Cancellation handling
- ✅ Discount management
- ✅ Guest-to-guest and booking-based messaging
- ✅ Wishlist functionality
- ✅ Review and rating support

---

## ⚠️ Challenges Faced

**Foreign Key Order:**
Maintaining the correct order of table creation and data insertion was critical. Foreign key constraints require parent tables to exist before child tables are created or populated.

**Minimum Record Requirement:**
Ensuring every table — including bridge/junction tables like `property_amenities` — contained at least 20 records required careful planning of sample data.

**Solution:** Both challenges were resolved by planning the execution order in advance and using structured, consistent sample data during insertion.

---

## 📚 Learning Outcomes

This development phase strengthened practical understanding of:

- Relational database design principles
- SQL schema creation and management
- Primary key and foreign key constraint implementation
- Table relationship modeling
- Structured data insertion strategies
- Database testing and query validation
- Implementation documentation in MySQL Workbench

---

## 👤 Author

| Field | Detail |
|---|---|
| **Name** | Janith Sameera Kandambige  |
| **Matriculation** |  10254336 |
| **Project** | Airbnb Database Management System |
| **Phase** | Development Phase / Reflection Phase |
| **Institution** | IU International University of Applied Sciences |
| **Tool** | MySQL Workbench |

---

*This project was implemented as part of the Database / Portfolio Assignment at IU International University of Applied Sciences.*

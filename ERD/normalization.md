## Database Normalization
### Objective

To ensure the Airbnb Clone database design follows Third Normal Form (3NF) — eliminating redundancy, ensuring data integrity, and maintaining efficiency.

## Normalization Steps
1. First Normal Form (1NF)

**Rule:**

Each column contains only atomic (indivisible) values.

Each record is unique (no repeating groups).

**Application:**

Every table has a primary key (user_id, property_id, booking_id, etc.).

All attributes hold single values — for example, email, phone_number, and price_per_night contain only one value each.
✅ Database is in 1NF.

2. Second Normal Form (2NF)

**Rule:**

Must be in 1NF.

All non-key attributes must depend on the whole primary key, not just part of it.

**Application:**

No composite primary keys are used; each table has a single-column UUID as the primary key.

All non-key attributes depend entirely on their table’s primary key (e.g., name, location, and price_per_night depend on property_id).
✅ Database is in 2NF.

3. Third Normal Form (3NF)

**Rule:**

Must be in 2NF.

No transitive dependencies — non-key attributes should not depend on other non-key attributes.

**Application:**

User details (name, email, role) depend only on user_id.

Property info (location, price, description) depends only on property_id.

Booking info (dates, total_price, status) depends only on booking_id.

Payment info depends only on payment_id (via booking_id relationship, not directly on user).

No derived or redundant data (e.g., total_price is stored only in Bookings, not elsewhere).
✅ Database is in 3NF.

**Result**

After applying normalization:

No redundant data (user, property, and booking info are separated).

Clear relationships through foreign keys.

Improved consistency and data integrity.

The final design ensures the database is well-structured, scalable, and adheres to Third Normal Form (3NF).
-- ==========================================
-- SAMPLE DATA FOR AIRBNB CLONE DATABASE
-- ==========================================

-- Insert Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
    ('11111111-1111-1111-1111-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hashed_password_1', '+2348011111111', 'guest'),
    ('22222222-2222-2222-2222-222222222222', 'Michael', 'Smith', 'michael@example.com', 'hashed_password_2', '+2348022222222', 'host'),
    ('33333333-3333-3333-3333-333333333333', 'David', 'Brown', 'david@example.com', 'hashed_password_3', '+2348033333333', 'admin');

-- Insert Properties (owned by Michael)
INSERT INTO properties (property_id, host_id, name, description, location, price_per_night)
VALUES
    ('aaaa1111-aaaa-1111-aaaa-1111aaaa1111', '22222222-2222-2222-2222-222222222222', 'Lagos Beach Apartment', 'Beautiful beachfront apartment in Lekki.', 'Lagos, Nigeria', 120.00),
    ('bbbb2222-bbbb-2222-bbbb-2222bbbb2222', '22222222-2222-2222-2222-222222222222', 'Abuja City Condo', 'Modern condo in the heart of Abuja.', 'Abuja, Nigeria', 95.00);

-- Insert Bookings (by Alice)
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
    ('c1111111-c111-1111-c111-1111c1111111', 'aaaa1111-aaaa-1111-aaaa-1111aaaa1111', '11111111-1111-1111-1111-111111111111', '2025-11-01', '2025-11-05', 480.00, 'confirmed'),
    ('c2222222-c222-2222-c222-2222c2222222', 'bbbb2222-bbbb-2222-bbbb-2222bbbb2222', '11111111-1111-1111-1111-111111111111', '2025-12-10', '2025-12-15', 475.00, 'pending');

-- Insert Payments (linked to bookings)
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
    ('p1111111-p111-1111-p111-1111p1111111', 'c1111111-c111-1111-c111-1111c1111111', 480.00, 'stripe'),
    ('p2222222-p222-2222-p222-2222p2222222', 'c2222222-c222-2222-c222-2222c2222222', 475.00, 'paypal');

-- Insert Reviews (by Alice on Lagos Beach Apartment)
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
    ('r1111111-r111-1111-r111-1111r1111111', 'aaaa1111-aaaa-1111-aaaa-1111aaaa1111', '11111111-1111-1111-1111-111111111111', 5, 'Amazing stay! The view was incredible and the host was very friendly.');

-- Insert Messages (between Alice and Michael)
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
    ('m1111111-m111-1111-m111-1111m1111111', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi Michael! Is your Lagos apartment available next weekend?'),
    ('m2222222-m222-2222-m222-2222m2222222', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Hi Alice! Yes, it’s available. I’ll send you a confirmation.');


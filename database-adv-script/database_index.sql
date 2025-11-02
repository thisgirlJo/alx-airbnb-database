-- Index on email for faster login searches
CREATE INDEX idx_user_email ON User(email);

-- Index on user_id (though it's likely already the PRIMARY KEY)
CREATE INDEX idx_user_id ON User(user_id);

-- Index on location to speed up property search by city or region
CREATE INDEX idx_property_location ON Property(location);

-- Index on price for sorting/filtering
CREATE INDEX idx_property_price ON Property(price_per_night);

-- Index on user_id for JOINs between User and Booking
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Index on property_id for JOINs with Property
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Index on booking_date for queries like "bookings this month"
CREATE INDEX idx_booking_date ON Booking(booking_date);

-- Optional: index on status if you often filter (e.g., WHERE status = 'confirmed')
CREATE INDEX idx_booking_status ON Booking(status);


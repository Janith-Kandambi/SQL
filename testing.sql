USE airbnb_db;

SELECT 'AIRBNB DATABASE TESTING STARTED' AS status;

SELECT '1. DISPLAY ALL DATA FROM ALL 20 TABLES' AS test_section;

SELECT 'users' AS table_name;
SELECT * FROM users;

SELECT 'guests' AS table_name;
SELECT * FROM guests;

SELECT 'hosts' AS table_name;
SELECT * FROM hosts;

SELECT 'admins' AS table_name;
SELECT * FROM admins;

SELECT 'countries' AS table_name;
SELECT * FROM countries;

SELECT 'cities' AS table_name;
SELECT * FROM cities;

SELECT 'properties' AS table_name;
SELECT * FROM properties;

SELECT 'addresses' AS table_name;
SELECT * FROM addresses;

SELECT 'rooms' AS table_name;
SELECT * FROM rooms;

SELECT 'payment_methods' AS table_name;
SELECT * FROM payment_methods;

SELECT 'bookings' AS table_name;
SELECT * FROM bookings;

SELECT 'payments' AS table_name;
SELECT * FROM payments;

SELECT 'amenities' AS table_name;
SELECT * FROM amenities;

SELECT 'property_amenities' AS table_name;
SELECT * FROM property_amenities;

SELECT 'availability_calendar' AS table_name;
SELECT * FROM availability_calendar;

SELECT 'cancellations' AS table_name;
SELECT * FROM cancellations;

SELECT 'discounts' AS table_name;
SELECT * FROM discounts;

SELECT 'messages' AS table_name;
SELECT * FROM messages;

SELECT 'wishlists' AS table_name;
SELECT * FROM wishlists;

SELECT 'reviews' AS table_name;
SELECT * FROM reviews;

SELECT '2. COUNT CHECK FOR ALL 20 TABLES' AS test_section;

SELECT 'users' AS table_name, COUNT(*) AS total_records FROM users
UNION ALL
SELECT 'guests', COUNT(*) FROM guests
UNION ALL
SELECT 'hosts', COUNT(*) FROM hosts
UNION ALL
SELECT 'admins', COUNT(*) FROM admins
UNION ALL
SELECT 'countries', COUNT(*) FROM countries
UNION ALL
SELECT 'cities', COUNT(*) FROM cities
UNION ALL
SELECT 'properties', COUNT(*) FROM properties
UNION ALL
SELECT 'addresses', COUNT(*) FROM addresses
UNION ALL
SELECT 'rooms', COUNT(*) FROM rooms
UNION ALL
SELECT 'payment_methods', COUNT(*) FROM payment_methods
UNION ALL
SELECT 'bookings', COUNT(*) FROM bookings
UNION ALL
SELECT 'payments', COUNT(*) FROM payments
UNION ALL
SELECT 'amenities', COUNT(*) FROM amenities
UNION ALL
SELECT 'property_amenities', COUNT(*) FROM property_amenities
UNION ALL
SELECT 'availability_calendar', COUNT(*) FROM availability_calendar
UNION ALL
SELECT 'cancellations', COUNT(*) FROM cancellations
UNION ALL
SELECT 'discounts', COUNT(*) FROM discounts
UNION ALL
SELECT 'messages', COUNT(*) FROM messages
UNION ALL
SELECT 'wishlists', COUNT(*) FROM wishlists
UNION ALL
SELECT 'reviews', COUNT(*) FROM reviews;

SELECT '3. BOOKING DETAILS WITH GUEST, ROOM, AND PROPERTY' AS test_section;

SELECT 
    b.booking_id,
    u.first_name,
    u.last_name,
    p.title AS property_title,
    r.room_type,
    b.check_in_date,
    b.check_out_date,
    b.booking_status,
    b.total_amount
FROM bookings b
JOIN guests g ON b.guest_id = g.guest_id
JOIN users u ON g.user_id = u.user_id
JOIN rooms r ON b.room_id = r.room_id
JOIN properties p ON r.property_id = p.property_id;

SELECT '4. PAYMENT DETAILS WITH BOOKING INFORMATION' AS test_section;

SELECT 
    pay.payment_id,
    b.booking_id,
    u.first_name,
    u.last_name,
    pm.method_name,
    pm.provider_name,
    pay.amount,
    pay.payment_status,
    pay.payment_date
FROM payments pay
JOIN bookings b ON pay.booking_id = b.booking_id
JOIN guests g ON b.guest_id = g.guest_id
JOIN users u ON g.user_id = u.user_id
JOIN payment_methods pm ON pay.payment_method_id = pm.payment_method_id;

SELECT '5. PROPERTY AND AMENITIES RELATIONSHIP TEST' AS test_section;

SELECT 
    p.property_id,
    p.title AS property_title,
    a.amenity_name,
    a.amenity_category,
    pa.availability_status
FROM property_amenities pa
JOIN properties p ON pa.property_id = p.property_id
JOIN amenities a ON pa.amenity_id = a.amenity_id
ORDER BY p.property_id;

SELECT '6. ROOM AVAILABILITY TEST' AS test_section;

SELECT 
    ac.calendar_id,
    r.room_id,
    p.title AS property_title,
    r.room_type,
    ac.available_date,
    ac.availability_status,
    ac.special_price
FROM availability_calendar ac
JOIN rooms r ON ac.room_id = r.room_id
JOIN properties p ON r.property_id = p.property_id
ORDER BY ac.calendar_id;

SELECT '7. CANCELLATION DETAILS TEST' AS test_section;

SELECT 
    c.cancellation_id,
    b.booking_id,
    u.first_name,
    u.last_name,
    c.cancelled_by,
    c.cancellation_date,
    c.refund_amount,
    c.reason
FROM cancellations c
JOIN bookings b ON c.booking_id = b.booking_id
JOIN guests g ON b.guest_id = g.guest_id
JOIN users u ON g.user_id = u.user_id
ORDER BY c.cancellation_id;

SELECT '8. DISCOUNT DETAILS TEST' AS test_section;

SELECT 
    d.discount_id,
    p.title AS property_title,
    d.discount_type,
    d.discount_value,
    d.valid_from,
    d.valid_to
FROM discounts d
JOIN properties p ON d.property_id = p.property_id
ORDER BY d.discount_id;

SELECT '9. MESSAGE DETAILS TEST' AS test_section;

SELECT 
    m.message_id,
    sender.first_name AS sender_first_name,
    sender.last_name AS sender_last_name,
    receiver.first_name AS receiver_first_name,
    receiver.last_name AS receiver_last_name,
    m.booking_id,
    m.message_text,
    m.sent_at
FROM messages m
JOIN users sender ON m.sender_user_id = sender.user_id
JOIN users receiver ON m.receiver_user_id = receiver.user_id
ORDER BY m.message_id;

SELECT '10. WISHLIST DETAILS TEST' AS test_section;

SELECT 
    w.wishlist_id,
    u.first_name,
    u.last_name,
    p.title AS property_title,
    w.added_at
FROM wishlists w
JOIN guests g ON w.guest_id = g.guest_id
JOIN users u ON g.user_id = u.user_id
JOIN properties p ON w.property_id = p.property_id
ORDER BY w.wishlist_id;

SELECT '11. REVIEW DETAILS TEST' AS test_section;

SELECT 
    r.review_id,
    b.booking_id,
    u.first_name,
    u.last_name,
    p.title AS property_title,
    r.rating_score,
    r.review_text,
    r.review_date
FROM reviews r
JOIN bookings b ON r.booking_id = b.booking_id
JOIN guests g ON r.guest_id = g.guest_id
JOIN users u ON g.user_id = u.user_id
JOIN properties p ON r.property_id = p.property_id
ORDER BY r.review_id;

SELECT '12. ADDRESS WITH CITY AND COUNTRY TEST' AS test_section;

SELECT 
    a.address_id,
    p.title AS property_title,
    a.street,
    a.postal_code,
    c.city_name,
    co.country_name
FROM addresses a
JOIN properties p ON a.property_id = p.property_id
JOIN cities c ON a.city_id = c.city_id
JOIN countries co ON c.country_id = co.country_id
ORDER BY a.address_id;

SELECT '13. HOST PROPERTY TEST' AS test_section;

SELECT 
    h.host_id,
    u.first_name,
    u.last_name,
    p.property_id,
    p.title,
    p.property_type,
    p.max_guests
FROM hosts h
JOIN users u ON h.user_id = u.user_id
JOIN properties p ON h.host_id = p.host_id
ORDER BY h.host_id;

SELECT '14. GUEST BOOKING COUNT TEST' AS test_section;

SELECT 
    g.guest_id,
    u.first_name,
    u.last_name,
    COUNT(b.booking_id) AS total_bookings
FROM guests g
JOIN users u ON g.user_id = u.user_id
LEFT JOIN bookings b ON g.guest_id = b.guest_id
GROUP BY g.guest_id, u.first_name, u.last_name
ORDER BY total_bookings DESC;

SELECT '15. PROPERTY REVIEW AVERAGE TEST' AS test_section;

SELECT 
    p.property_id,
    p.title,
    ROUND(AVG(r.rating_score), 2) AS average_rating
FROM properties p
LEFT JOIN reviews r ON p.property_id = r.property_id
GROUP BY p.property_id, p.title
ORDER BY average_rating DESC;

SELECT '16. TOTAL PAYMENT AMOUNT TEST' AS test_section;

SELECT 
    SUM(amount) AS total_payment_amount
FROM payments;

SELECT '17. CONFIRMED BOOKINGS TEST' AS test_section;

SELECT *
FROM bookings
WHERE booking_status = 'Confirmed';

SELECT '18. PAID PAYMENTS TEST' AS test_section;

SELECT *
FROM payments
WHERE payment_status = 'Paid';

SELECT '19. AVAILABLE ROOMS TEST' AS test_section;

SELECT 
    ac.calendar_id,
    r.room_id,
    p.title,
    r.room_type,
    ac.available_date
FROM availability_calendar ac
JOIN rooms r ON ac.room_id = r.room_id
JOIN properties p ON r.property_id = p.property_id
WHERE ac.availability_status = 'Available';

SELECT '20. IU MINIMUM 20 RECORDS VALIDATION TEST' AS test_section;

SELECT 
    table_name,
    total_records,
    CASE
        WHEN total_records >= 20 THEN 'PASS'
        ELSE 'FAIL'
    END AS iu_requirement_status
FROM (
    SELECT 'users' AS table_name, COUNT(*) AS total_records FROM users
    UNION ALL
    SELECT 'guests', COUNT(*) FROM guests
    UNION ALL
    SELECT 'hosts', COUNT(*) FROM hosts
    UNION ALL
    SELECT 'admins', COUNT(*) FROM admins
    UNION ALL
    SELECT 'countries', COUNT(*) FROM countries
    UNION ALL
    SELECT 'cities', COUNT(*) FROM cities
    UNION ALL
    SELECT 'properties', COUNT(*) FROM properties
    UNION ALL
    SELECT 'addresses', COUNT(*) FROM addresses
    UNION ALL
    SELECT 'rooms', COUNT(*) FROM rooms
    UNION ALL
    SELECT 'payment_methods', COUNT(*) FROM payment_methods
    UNION ALL
    SELECT 'bookings', COUNT(*) FROM bookings
    UNION ALL
    SELECT 'payments', COUNT(*) FROM payments
    UNION ALL
    SELECT 'amenities', COUNT(*) FROM amenities
    UNION ALL
    SELECT 'property_amenities', COUNT(*) FROM property_amenities
    UNION ALL
    SELECT 'availability_calendar', COUNT(*) FROM availability_calendar
    UNION ALL
    SELECT 'cancellations', COUNT(*) FROM cancellations
    UNION ALL
    SELECT 'discounts', COUNT(*) FROM discounts
    UNION ALL
    SELECT 'messages', COUNT(*) FROM messages
    UNION ALL
    SELECT 'wishlists', COUNT(*) FROM wishlists
    UNION ALL
    SELECT 'reviews', COUNT(*) FROM reviews
) AS table_counts;

SELECT 'AIRBNB DATABASE TESTING COMPLETED SUCCESSFULLY' AS status;
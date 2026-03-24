USE airbnb_db;


INSERT INTO users (first_name, last_name, email, phone, password_hash) VALUES
('Aarav', 'Sharma', 'aarav.sharma@example.com', '9000000001', 'hash1'),
('Vivaan', 'Patel', 'vivaan.patel@example.com', '9000000002', 'hash2'),
('Aditya', 'Singh', 'aditya.singh@example.com', '9000000003', 'hash3'),
('Vihaan', 'Gupta', 'vihaan.gupta@example.com', '9000000004', 'hash4'),
('Arjun', 'Kumar', 'arjun.kumar@example.com', '9000000005', 'hash5'),
('Sai', 'Das', 'sai.das@example.com', '9000000006', 'hash6'),
('Reyansh', 'Roy', 'reyansh.roy@example.com', '9000000007', 'hash7'),
('Krishna', 'Paul', 'krishna.paul@example.com', '9000000008', 'hash8'),
('Ishaan', 'Nair', 'ishaan.nair@example.com', '9000000009', 'hash9'),
('Shaurya', 'Reddy', 'shaurya.reddy@example.com', '9000000010', 'hash10'),
('Anaya', 'Mehta', 'anaya.mehta@example.com', '9000000011', 'hash11'),
('Diya', 'Bose', 'diya.bose@example.com', '9000000012', 'hash12'),
('Myra', 'Saha', 'myra.saha@example.com', '9000000013', 'hash13'),
('Aadhya', 'Ghosh', 'aadhya.ghosh@example.com', '9000000014', 'hash14'),
('Kiara', 'Iyer', 'kiara.iyer@example.com', '9000000015', 'hash15'),
('Pari', 'Mitra', 'pari.mitra@example.com', '9000000016', 'hash16'),
('Sara', 'Chowdhury', 'sara.chowdhury@example.com', '9000000017', 'hash17'),
('Riya', 'Mukherjee', 'riya.mukherjee@example.com', '9000000018', 'hash18'),
('Navya', 'Jain', 'navya.jain@example.com', '9000000019', 'hash19'),
('Meera', 'Yadav', 'meera.yadav@example.com', '9000000020', 'hash20');


INSERT INTO guests (user_id, identity_verified, profile_photo) VALUES
(1, TRUE, 'guest1.jpg'),
(2, TRUE, 'guest2.jpg'),
(3, FALSE, 'guest3.jpg'),
(4, TRUE, 'guest4.jpg'),
(5, TRUE, 'guest5.jpg'),
(6, FALSE, 'guest6.jpg'),
(7, TRUE, 'guest7.jpg'),
(8, TRUE, 'guest8.jpg'),
(9, FALSE, 'guest9.jpg'),
(10, TRUE, 'guest10.jpg'),
(11, TRUE, 'guest11.jpg'),
(12, FALSE, 'guest12.jpg'),
(13, TRUE, 'guest13.jpg'),
(14, TRUE, 'guest14.jpg'),
(15, FALSE, 'guest15.jpg'),
(16, TRUE, 'guest16.jpg'),
(17, TRUE, 'guest17.jpg'),
(18, FALSE, 'guest18.jpg'),
(19, TRUE, 'guest19.jpg'),
(20, TRUE, 'guest20.jpg');

INSERT INTO hosts (user_id, host_since, response_rate, superhost_status) VALUES
(1, '2022-01-10', 95.50, TRUE),
(2, '2022-02-12', 91.20, FALSE),
(3, '2022-03-15', 89.75, FALSE),
(4, '2022-04-18', 96.10, TRUE),
(5, '2022-05-20', 90.40, FALSE),
(6, '2022-06-25', 87.90, FALSE),
(7, '2022-07-11', 98.30, TRUE),
(8, '2022-08-09', 92.50, TRUE),
(9, '2022-09-14', 88.60, FALSE),
(10, '2022-10-01', 94.80, TRUE),
(11, '2022-10-21', 90.00, FALSE),
(12, '2022-11-05', 86.30, FALSE),
(13, '2022-11-18', 97.40, TRUE),
(14, '2022-12-02', 93.10, TRUE),
(15, '2023-01-07', 89.20, FALSE),
(16, '2023-02-10', 91.90, FALSE),
(17, '2023-03-15', 96.80, TRUE),
(18, '2023-04-17', 88.00, FALSE),
(19, '2023-05-22', 92.70, TRUE),
(20, '2023-06-01', 90.60, FALSE);





INSERT INTO admins (user_id, role_level) VALUES
(1, 'Senior'),
(2, 'Junior'),
(3, 'Moderator'),
(4, 'Senior'),
(5, 'Junior'),
(6, 'Moderator'),
(7, 'Senior'),
(8, 'Junior'),
(9, 'Moderator'),
(10, 'Senior'),
(11, 'Junior'),
(12, 'Moderator'),
(13, 'Senior'),
(14, 'Junior'),
(15, 'Moderator'),
(16, 'Senior'),
(17, 'Junior'),
(18, 'Moderator'),
(19, 'Senior'),
(20, 'Junior');




INSERT INTO countries (country_name) VALUES
('India'),
('Germany'),
('France'),
('Italy'),
('Spain'),
('United Kingdom'),
('United States'),
('Canada'),
('Australia'),
('Japan'),
('South Korea'),
('Singapore'),
('United Arab Emirates'),
('Thailand'),
('Malaysia'),
('Netherlands'),
('Switzerland'),
('Austria'),
('Belgium'),
('Portugal');




INSERT INTO cities (city_name, country_id) VALUES
('Kolkata', 1),
('Berlin', 2),
('Paris', 3),
('Rome', 4),
('Madrid', 5),
('London', 6),
('New York', 7),
('Toronto', 8),
('Sydney', 9),
('Tokyo', 10),
('Seoul', 11),
('Singapore City', 12),
('Dubai', 13),
('Bangkok', 14),
('Kuala Lumpur', 15),
('Amsterdam', 16),
('Zurich', 17),
('Vienna', 18),
('Brussels', 19),
('Lisbon', 20);



SELECT 'users' AS table_name, COUNT(*) AS total FROM users
UNION ALL
SELECT 'guests', COUNT(*) FROM guests
UNION ALL
SELECT 'hosts', COUNT(*) FROM hosts
UNION ALL
SELECT 'admins', COUNT(*) FROM admins
UNION ALL
SELECT 'countries', COUNT(*) FROM countries
UNION ALL
SELECT 'cities', COUNT(*) FROM cities;




INSERT INTO properties (host_id, title, description, property_type, max_guests) VALUES
(1, 'Cozy Studio Kolkata', 'A compact and comfortable studio in the heart of the city.', 'Studio', 2),
(2, 'Modern Apartment Berlin', 'A fully furnished modern apartment near central Berlin.', 'Apartment', 4),
(3, 'Charming Flat Paris', 'A stylish flat close to major Paris attractions.', 'Flat', 3),
(4, 'Classic Home Rome', 'A traditional home with spacious interiors in Rome.', 'House', 5),
(5, 'Sunny Loft Madrid', 'A bright loft with a modern interior and balcony.', 'Loft', 2),
(6, 'Luxury Suite London', 'An elegant suite suitable for couples and families.', 'Suite', 4),
(7, 'Downtown Stay New York', 'A city stay near shopping and transport.', 'Apartment', 3),
(8, 'Urban Condo Toronto', 'A well designed condo in downtown Toronto.', 'Condo', 4),
(9, 'Harbour View Sydney', 'A scenic apartment with harbour side access.', 'Apartment', 3),
(10, 'Minimal Room Tokyo', 'A neat and compact room designed in Japanese style.', 'Room', 2),
(11, 'Comfort Stay Seoul', 'A clean and affordable stay in central Seoul.', 'Apartment', 3),
(12, 'Premium Flat Singapore', 'A premium flat near business and shopping zones.', 'Flat', 4),
(13, 'Skyline Suite Dubai', 'A luxury suite with skyline views and amenities.', 'Suite', 5),
(14, 'Relax Home Bangkok', 'A calm house ideal for short vacations.', 'House', 4),
(15, 'City Lights Kuala Lumpur', 'A modern city apartment with stylish furnishings.', 'Apartment', 3),
(16, 'Canal View Amsterdam', 'A cozy stay near the canal with beautiful surroundings.', 'Apartment', 2),
(17, 'Elegant Stay Zurich', 'An elegant apartment in a peaceful neighborhood.', 'Apartment', 3),
(18, 'Historic Home Vienna', 'A charming historic style home with spacious rooms.', 'House', 5),
(19, 'Central Flat Brussels', 'A practical flat with easy transport access.', 'Flat', 3),
(20, 'Ocean Breeze Lisbon', 'A relaxing apartment with fresh sea breeze nearby.', 'Apartment', 4);



INSERT INTO addresses (property_id, street, postal_code, city_id) VALUES
(1, '12 Park Street', '700016', 1),
(2, '45 Alexanderplatz', '10178', 2),
(3, '22 Rue Lafayette', '75009', 3),
(4, '10 Via Roma', '00100', 4),
(5, '18 Gran Via', '28013', 5),
(6, '8 Baker Street', 'NW16XE', 6),
(7, '150 Manhattan Ave', '10001', 7),
(8, '33 King Street', 'M5H2N2', 8),
(9, '21 Harbour Road', '2000', 9),
(10, '7 Sakura Lane', '1000001', 10),
(11, '14 River Road', '04524', 11),
(12, '5 Orchard Street', '238823', 12),
(13, '60 Marina Walk', '00000', 13),
(14, '11 Sukhumvit Road', '10110', 14),
(15, '27 Bukit Bintang', '55100', 15),
(16, '9 Canal Street', '1012WX', 16),
(17, '4 Bahnhofstrasse', '8001', 17),
(18, '16 Ringstrasse', '1010', 18),
(19, '28 Grand Place', '1000', 19),
(20, '6 Ocean Drive', '1200', 20);


INSERT INTO rooms (property_id, room_type, price_per_night, capacity) VALUES
(1, 'Single Room', 45.00, 1),
(2, 'Double Room', 80.00, 2),
(3, 'Deluxe Room', 95.00, 2),
(4, 'Family Room', 120.00, 4),
(5, 'Studio Room', 70.00, 2),
(6, 'Suite Room', 150.00, 3),
(7, 'Standard Room', 110.00, 2),
(8, 'Condo Room', 100.00, 3),
(9, 'Sea View Room', 130.00, 2),
(10, 'Compact Room', 60.00, 1),
(11, 'Queen Room', 90.00, 2),
(12, 'Premium Room', 140.00, 3),
(13, 'Executive Suite', 200.00, 4),
(14, 'Holiday Room', 85.00, 2),
(15, 'City View Room', 115.00, 2),
(16, 'Canal Side Room', 125.00, 2),
(17, 'Luxury Room', 160.00, 3),
(18, 'Classic Room', 105.00, 2),
(19, 'Central Room', 88.00, 2),
(20, 'Ocean View Room', 145.00, 3);



INSERT INTO payment_methods (method_name, provider_name) VALUES
('Credit Card', 'Visa'),
('Credit Card', 'Mastercard'),
('Debit Card', 'Visa Debit'),
('Debit Card', 'Maestro'),
('UPI', 'Google Pay'),
('UPI', 'PhonePe'),
('UPI', 'Paytm'),
('Digital Wallet', 'PayPal'),
('Digital Wallet', 'Apple Pay'),
('Digital Wallet', 'Samsung Pay'),
('Bank Transfer', 'HSBC'),
('Bank Transfer', 'Deutsche Bank'),
('Bank Transfer', 'Citi Bank'),
('Net Banking', 'SBI'),
('Net Banking', 'ICICI Bank'),
('Net Banking', 'HDFC Bank'),
('Cashless Payment', 'Stripe'),
('Cashless Payment', 'Razorpay'),
('Crypto Payment', 'Binance Pay'),
('Gift Card', 'Airbnb Gift');



INSERT INTO bookings (guest_id, room_id, check_in_date, check_out_date, booking_status, total_amount) VALUES
(1, 1, '2026-04-01', '2026-04-03', 'Confirmed', 90.00),
(2, 2, '2026-04-02', '2026-04-05', 'Confirmed', 240.00),
(3, 3, '2026-04-03', '2026-04-06', 'Pending', 285.00),
(4, 4, '2026-04-04', '2026-04-07', 'Confirmed', 360.00),
(5, 5, '2026-04-05', '2026-04-07', 'Cancelled', 140.00),
(6, 6, '2026-04-06', '2026-04-09', 'Confirmed', 450.00),
(7, 7, '2026-04-07', '2026-04-10', 'Confirmed', 330.00),
(8, 8, '2026-04-08', '2026-04-11', 'Pending', 300.00),
(9, 9, '2026-04-09', '2026-04-12', 'Confirmed', 390.00),
(10, 10, '2026-04-10', '2026-04-12', 'Completed', 120.00),
(11, 11, '2026-04-11', '2026-04-14', 'Confirmed', 270.00),
(12, 12, '2026-04-12', '2026-04-15', 'Confirmed', 420.00),
(13, 13, '2026-04-13', '2026-04-16', 'Completed', 600.00),
(14, 14, '2026-04-14', '2026-04-16', 'Cancelled', 170.00),
(15, 15, '2026-04-15', '2026-04-18', 'Confirmed', 345.00),
(16, 16, '2026-04-16', '2026-04-19', 'Pending', 375.00),
(17, 17, '2026-04-17', '2026-04-20', 'Confirmed', 480.00),
(18, 18, '2026-04-18', '2026-04-21', 'Completed', 315.00),
(19, 19, '2026-04-19', '2026-04-22', 'Confirmed', 264.00),
(20, 20, '2026-04-20', '2026-04-23', 'Confirmed', 435.00);




SELECT 'properties' AS table_name, COUNT(*) AS total FROM properties
UNION ALL
SELECT 'addresses', COUNT(*) FROM addresses
UNION ALL
SELECT 'rooms', COUNT(*) FROM rooms
UNION ALL
SELECT 'payment_methods', COUNT(*) FROM payment_methods
UNION ALL
SELECT 'bookings', COUNT(*) FROM bookings;





INSERT INTO payments (booking_id, payment_method_id, payment_date, amount, payment_status) VALUES
(1, 1, '2026-03-28 10:00:00', 90.00, 'Paid'),
(2, 2, '2026-03-29 11:00:00', 240.00, 'Paid'),
(3, 3, '2026-03-30 12:00:00', 285.00, 'Pending'),
(4, 4, '2026-03-31 13:00:00', 360.00, 'Paid'),
(5, 5, '2026-04-01 14:00:00', 140.00, 'Refunded'),
(6, 6, '2026-04-02 15:00:00', 450.00, 'Paid'),
(7, 7, '2026-04-03 16:00:00', 330.00, 'Paid'),
(8, 8, '2026-04-04 17:00:00', 300.00, 'Pending'),
(9, 9, '2026-04-05 18:00:00', 390.00, 'Paid'),
(10, 10, '2026-04-06 19:00:00', 120.00, 'Paid'),
(11, 11, '2026-04-07 10:15:00', 270.00, 'Paid'),
(12, 12, '2026-04-08 11:15:00', 420.00, 'Paid'),
(13, 13, '2026-04-09 12:15:00', 600.00, 'Paid'),
(14, 14, '2026-04-10 13:15:00', 170.00, 'Refunded'),
(15, 15, '2026-04-11 14:15:00', 345.00, 'Paid'),
(16, 16, '2026-04-12 15:15:00', 375.00, 'Pending'),
(17, 17, '2026-04-13 16:15:00', 480.00, 'Paid'),
(18, 18, '2026-04-14 17:15:00', 315.00, 'Paid'),
(19, 19, '2026-04-15 18:15:00', 264.00, 'Paid'),
(20, 20, '2026-04-16 19:15:00', 435.00, 'Paid');



INSERT INTO amenities (amenity_name, amenity_category) VALUES
('WiFi', 'Internet'),
('Air Conditioning', 'Comfort'),
('Heating', 'Comfort'),
('Kitchen', 'Facility'),
('Washing Machine', 'Facility'),
('Free Parking', 'Transport'),
('Swimming Pool', 'Recreation'),
('Gym', 'Fitness'),
('TV', 'Entertainment'),
('Breakfast', 'Food'),
('Workspace', 'Business'),
('Balcony', 'Outdoor'),
('Elevator', 'Accessibility'),
('Pet Friendly', 'Policy'),
('Smoke Alarm', 'Safety'),
('Fire Extinguisher', 'Safety'),
('Hot Water', 'Bathroom'),
('Refrigerator', 'Kitchen'),
('Microwave', 'Kitchen'),
('Hair Dryer', 'Bathroom');




INSERT INTO property_amenities (property_id, amenity_id, availability_status) VALUES
(1, 1, 'Available'),
(1, 2, 'Available'),
(2, 1, 'Available'),
(2, 4, 'Available'),
(3, 3, 'Available'),
(3, 9, 'Available'),
(4, 5, 'Available'),
(4, 10, 'Available'),
(5, 6, 'Available'),
(5, 12, 'Available'),
(6, 7, 'Available'),
(6, 8, 'Available'),
(7, 11, 'Available'),
(7, 15, 'Available'),
(8, 13, 'Available'),
(8, 16, 'Available'),
(9, 14, 'Available'),
(9, 17, 'Available'),
(10, 18, 'Available'),
(10, 19, 'Available');





INSERT INTO availability_calendar (room_id, available_date, availability_status, special_price) VALUES
(1, '2026-04-25', 'Available', 45.00),
(2, '2026-04-25', 'Available', 80.00),
(3, '2026-04-25', 'Booked', 95.00),
(4, '2026-04-25', 'Available', 120.00),
(5, '2026-04-25', 'Unavailable', 70.00),
(6, '2026-04-25', 'Available', 150.00),
(7, '2026-04-25', 'Booked', 110.00),
(8, '2026-04-25', 'Available', 100.00),
(9, '2026-04-25', 'Available', 130.00),
(10, '2026-04-25', 'Available', 60.00),
(11, '2026-04-25', 'Booked', 90.00),
(12, '2026-04-25', 'Available', 140.00),
(13, '2026-04-25', 'Available', 200.00),
(14, '2026-04-25', 'Unavailable', 85.00),
(15, '2026-04-25', 'Available', 115.00),
(16, '2026-04-25', 'Booked', 125.00),
(17, '2026-04-25', 'Available', 160.00),
(18, '2026-04-25', 'Available', 105.00),
(19, '2026-04-25', 'Available', 88.00),
(20, '2026-04-25', 'Booked', 145.00);








INSERT INTO cancellations (booking_id, cancelled_by, cancellation_date, refund_amount, reason) VALUES
(1, 'Guest', '2026-03-29 09:00:00', 20.00, 'Change of plan'),
(2, 'Host', '2026-03-30 10:00:00', 50.00, 'Property maintenance'),
(3, 'Guest', '2026-03-31 11:00:00', 40.00, 'Travel issue'),
(4, 'Admin', '2026-04-01 12:00:00', 60.00, 'Policy violation'),
(5, 'Guest', '2026-04-02 13:00:00', 140.00, 'Medical reason'),
(6, 'Host', '2026-04-03 14:00:00', 100.00, 'Emergency issue'),
(7, 'Guest', '2026-04-04 15:00:00', 70.00, 'Schedule conflict'),
(8, 'Admin', '2026-04-05 16:00:00', 75.00, 'Verification issue'),
(9, 'Guest', '2026-04-06 17:00:00', 80.00, 'Budget problem'),
(10, 'Host', '2026-04-07 18:00:00', 30.00, 'Unexpected closure'),
(11, 'Guest', '2026-04-08 09:30:00', 60.00, 'Trip postponed'),
(12, 'Admin', '2026-04-09 10:30:00', 90.00, 'Booking error'),
(13, 'Guest', '2026-04-10 11:30:00', 120.00, 'Family emergency'),
(14, 'Guest', '2026-04-11 12:30:00', 170.00, 'Personal reason'),
(15, 'Host', '2026-04-12 13:30:00', 85.00, 'Room unavailable'),
(16, 'Admin', '2026-04-13 14:30:00', 95.00, 'Duplicate booking'),
(17, 'Guest', '2026-04-14 15:30:00', 110.00, 'Visa issue'),
(18, 'Host', '2026-04-15 16:30:00', 65.00, 'Renovation'),
(19, 'Guest', '2026-04-16 17:30:00', 55.00, 'Late arrival issue'),
(20, 'Admin', '2026-04-17 18:30:00', 100.00, 'System correction');










SELECT 'payments' AS table_name, COUNT(*) AS total FROM payments
UNION ALL
SELECT 'amenities', COUNT(*) FROM amenities
UNION ALL
SELECT 'property_amenities', COUNT(*) FROM property_amenities
UNION ALL
SELECT 'availability_calendar', COUNT(*) FROM availability_calendar
UNION ALL
SELECT 'cancellations', COUNT(*) FROM cancellations;









INSERT INTO discounts (property_id, discount_type, discount_value, valid_from, valid_to) VALUES
(1, 'Seasonal', 10.00, '2026-04-01', '2026-04-30'),
(2, 'Weekend', 15.00, '2026-04-02', '2026-04-28'),
(3, 'Festival', 12.50, '2026-04-03', '2026-04-27'),
(4, 'Monthly', 20.00, '2026-04-04', '2026-04-26'),
(5, 'Early Bird', 8.00, '2026-04-05', '2026-04-25'),
(6, 'Seasonal', 18.00, '2026-04-06', '2026-04-24'),
(7, 'Weekend', 14.00, '2026-04-07', '2026-04-23'),
(8, 'Festival', 11.00, '2026-04-08', '2026-04-22'),
(9, 'Monthly', 25.00, '2026-04-09', '2026-04-21'),
(10, 'Early Bird', 7.50, '2026-04-10', '2026-04-20'),
(11, 'Seasonal', 13.00, '2026-04-11', '2026-04-30'),
(12, 'Weekend', 16.00, '2026-04-12', '2026-04-29'),
(13, 'Festival', 22.00, '2026-04-13', '2026-04-28'),
(14, 'Monthly', 19.00, '2026-04-14', '2026-04-27'),
(15, 'Early Bird', 9.00, '2026-04-15', '2026-04-26'),
(16, 'Seasonal', 17.00, '2026-04-16', '2026-04-25'),
(17, 'Weekend', 21.00, '2026-04-17', '2026-04-24'),
(18, 'Festival', 10.50, '2026-04-18', '2026-04-23'),
(19, 'Monthly', 18.50, '2026-04-19', '2026-04-22'),
(20, 'Early Bird', 11.50, '2026-04-20', '2026-04-21');




INSERT INTO messages (sender_user_id, receiver_user_id, booking_id, message_text, sent_at) VALUES
(1, 2, 1, 'Hello, I would like to confirm my booking details.', '2026-03-28 09:00:00'),
(2, 1, 2, 'Your stay is confirmed. Please arrive after 2 PM.', '2026-03-29 09:15:00'),
(3, 4, 3, 'Is early check-in available for this booking?', '2026-03-30 09:30:00'),
(4, 3, 4, 'Yes, early check-in is possible with prior notice.', '2026-03-31 09:45:00'),
(5, 6, 5, 'I may need to cancel due to a schedule issue.', '2026-04-01 10:00:00'),
(6, 5, 6, 'Please let me know soon so I can update availability.', '2026-04-02 10:15:00'),
(7, 8, 7, 'Does the room include breakfast?', '2026-04-03 10:30:00'),
(8, 7, 8, 'Yes, breakfast is included in your stay.', '2026-04-04 10:45:00'),
(9, 10, 9, 'Can I bring one extra guest?', '2026-04-05 11:00:00'),
(10, 9, 10, 'Yes, one extra guest is allowed.', '2026-04-06 11:15:00'),
(11, 12, 11, 'Please share the exact property location.', '2026-04-07 11:30:00'),
(12, 11, 12, 'I have sent the address and nearby landmark.', '2026-04-08 11:45:00'),
(13, 14, 13, 'Is airport pickup available?', '2026-04-09 12:00:00'),
(14, 13, 14, 'No airport pickup, but taxi service is easy to get.', '2026-04-10 12:15:00'),
(15, 16, 15, 'Can I check out a little late?', '2026-04-11 12:30:00'),
(16, 15, 16, 'Late checkout is possible until 1 PM.', '2026-04-12 12:45:00'),
(17, 18, 17, 'Is parking available at the property?', '2026-04-13 13:00:00'),
(18, 17, 18, 'Yes, free parking is available for guests.', '2026-04-14 13:15:00'),
(19, 20, 19, 'I need WiFi details before arrival.', '2026-04-15 13:30:00'),
(20, 19, 20, 'WiFi password will be shared at check-in.', '2026-04-16 13:45:00');




INSERT INTO wishlists (guest_id, property_id, added_at) VALUES
(1, 5, '2026-03-20 08:00:00'),
(2, 6, '2026-03-20 08:10:00'),
(3, 7, '2026-03-20 08:20:00'),
(4, 8, '2026-03-20 08:30:00'),
(5, 9, '2026-03-20 08:40:00'),
(6, 10, '2026-03-20 08:50:00'),
(7, 11, '2026-03-20 09:00:00'),
(8, 12, '2026-03-20 09:10:00'),
(9, 13, '2026-03-20 09:20:00'),
(10, 14, '2026-03-20 09:30:00'),
(11, 15, '2026-03-20 09:40:00'),
(12, 16, '2026-03-20 09:50:00'),
(13, 17, '2026-03-20 10:00:00'),
(14, 18, '2026-03-20 10:10:00'),
(15, 19, '2026-03-20 10:20:00'),
(16, 20, '2026-03-20 10:30:00'),
(17, 1, '2026-03-20 10:40:00'),
(18, 2, '2026-03-20 10:50:00'),
(19, 3, '2026-03-20 11:00:00'),
(20, 4, '2026-03-20 11:10:00');




INSERT INTO reviews (booking_id, guest_id, property_id, rating_score, review_text, review_date) VALUES
(1, 1, 1, 4.5, 'Very clean and comfortable stay.', '2026-04-04 09:00:00'),
(2, 2, 2, 4.7, 'Great location and smooth check-in experience.', '2026-04-05 09:15:00'),
(3, 3, 3, 4.2, 'Nice property but the room was a bit small.', '2026-04-06 09:30:00'),
(4, 4, 4, 4.8, 'Excellent host and spacious home.', '2026-04-07 09:45:00'),
(5, 5, 5, 3.9, 'Good place overall, but booking was cancelled later.', '2026-04-08 10:00:00'),
(6, 6, 6, 4.6, 'Luxury feel and very good amenities.', '2026-04-09 10:15:00'),
(7, 7, 7, 4.4, 'Convenient area and easy transport access.', '2026-04-10 10:30:00'),
(8, 8, 8, 4.1, 'Nice condo and peaceful environment.', '2026-04-11 10:45:00'),
(9, 9, 9, 4.9, 'Beautiful view and excellent room condition.', '2026-04-12 11:00:00'),
(10, 10, 10, 4.0, 'Compact but clean and well organized.', '2026-04-13 11:15:00'),
(11, 11, 11, 4.3, 'Comfortable stay and polite host.', '2026-04-14 11:30:00'),
(12, 12, 12, 4.7, 'Premium quality flat and very secure area.', '2026-04-15 11:45:00'),
(13, 13, 13, 5.0, 'Outstanding suite and amazing experience.', '2026-04-16 12:00:00'),
(14, 14, 14, 3.8, 'Decent stay but cancellation handling was average.', '2026-04-17 12:15:00'),
(15, 15, 15, 4.4, 'Modern apartment and good city access.', '2026-04-18 12:30:00'),
(16, 16, 16, 4.5, 'Lovely canal-side atmosphere and cozy room.', '2026-04-19 12:45:00'),
(17, 17, 17, 4.8, 'Elegant place and smooth overall stay.', '2026-04-20 13:00:00'),
(18, 18, 18, 4.2, 'Historic charm and clean interiors.', '2026-04-21 13:15:00'),
(19, 19, 19, 4.1, 'Practical flat and easy city travel.', '2026-04-22 13:30:00'),
(20, 20, 20, 4.6, 'Refreshing stay with a relaxing environment.', '2026-04-23 13:45:00');




SELECT 'discounts' AS table_name, COUNT(*) AS total FROM discounts
UNION ALL
SELECT 'messages', COUNT(*) FROM messages
UNION ALL
SELECT 'wishlists', COUNT(*) FROM wishlists
UNION ALL
SELECT 'reviews', COUNT(*) FROM reviews;






-- Final full-table count check


SELECT 'users' AS table_name, COUNT(*) AS total FROM users
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
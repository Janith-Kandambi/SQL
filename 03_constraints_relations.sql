USE airbnb_db;

ALTER TABLE guests
ADD CONSTRAINT fk_guests_user
FOREIGN KEY (user_id) REFERENCES users(user_id);

ALTER TABLE hosts
ADD CONSTRAINT fk_hosts_user
FOREIGN KEY (user_id) REFERENCES users(user_id);

ALTER TABLE admins
ADD CONSTRAINT fk_admins_user
FOREIGN KEY (user_id) REFERENCES users(user_id);

ALTER TABLE cities
ADD CONSTRAINT fk_cities_country
FOREIGN KEY (country_id) REFERENCES countries(country_id);

ALTER TABLE properties
ADD CONSTRAINT fk_properties_host
FOREIGN KEY (host_id) REFERENCES hosts(host_id);

ALTER TABLE addresses
ADD CONSTRAINT fk_addresses_property
FOREIGN KEY (property_id) REFERENCES properties(property_id),
ADD CONSTRAINT fk_addresses_city
FOREIGN KEY (city_id) REFERENCES cities(city_id);

ALTER TABLE rooms
ADD CONSTRAINT fk_rooms_property
FOREIGN KEY (property_id) REFERENCES properties(property_id);

ALTER TABLE bookings
ADD CONSTRAINT fk_bookings_guest
FOREIGN KEY (guest_id) REFERENCES guests(guest_id),
ADD CONSTRAINT fk_bookings_room
FOREIGN KEY (room_id) REFERENCES rooms(room_id);

ALTER TABLE payments
ADD CONSTRAINT fk_payments_booking
FOREIGN KEY (booking_id) REFERENCES bookings(booking_id),
ADD CONSTRAINT fk_payments_payment_method
FOREIGN KEY (payment_method_id) REFERENCES payment_methods(payment_method_id);

ALTER TABLE property_amenities
ADD CONSTRAINT fk_property_amenities_property
FOREIGN KEY (property_id) REFERENCES properties(property_id),
ADD CONSTRAINT fk_property_amenities_amenity
FOREIGN KEY (amenity_id) REFERENCES amenities(amenity_id);

ALTER TABLE availability_calendar
ADD CONSTRAINT fk_availability_room
FOREIGN KEY (room_id) REFERENCES rooms(room_id);

ALTER TABLE cancellations
ADD CONSTRAINT fk_cancellations_booking
FOREIGN KEY (booking_id) REFERENCES bookings(booking_id);

ALTER TABLE discounts
ADD CONSTRAINT fk_discounts_property
FOREIGN KEY (property_id) REFERENCES properties(property_id);

ALTER TABLE messages
ADD CONSTRAINT fk_messages_sender
FOREIGN KEY (sender_user_id) REFERENCES users(user_id),
ADD CONSTRAINT fk_messages_receiver
FOREIGN KEY (receiver_user_id) REFERENCES users(user_id),
ADD CONSTRAINT fk_messages_booking
FOREIGN KEY (booking_id) REFERENCES bookings(booking_id);

ALTER TABLE wishlists
ADD CONSTRAINT fk_wishlists_guest
FOREIGN KEY (guest_id) REFERENCES guests(guest_id),
ADD CONSTRAINT fk_wishlists_property
FOREIGN KEY (property_id) REFERENCES properties(property_id);

ALTER TABLE reviews
ADD CONSTRAINT fk_reviews_booking
FOREIGN KEY (booking_id) REFERENCES bookings(booking_id),
ADD CONSTRAINT fk_reviews_guest
FOREIGN KEY (guest_id) REFERENCES guests(guest_id),
ADD CONSTRAINT fk_reviews_property
FOREIGN KEY (property_id) REFERENCES properties(property_id);
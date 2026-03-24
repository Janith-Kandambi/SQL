CREATE DATABASE IF NOT EXISTS airbnb_db;
USE airbnb_db;

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    password_hash VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE guests (
    guest_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL UNIQUE,
    identity_verified BOOLEAN,
    profile_photo VARCHAR(255)
);

CREATE TABLE hosts (
    host_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL UNIQUE,
    host_since DATE,
    response_rate DECIMAL(5,2),
    superhost_status BOOLEAN
);

CREATE TABLE admins (
    admin_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL UNIQUE,
    role_level VARCHAR(50)
);

CREATE TABLE countries (
    country_id INT PRIMARY KEY AUTO_INCREMENT,
    country_name VARCHAR(100) NOT NULL
);

CREATE TABLE cities (
    city_id INT PRIMARY KEY AUTO_INCREMENT,
    city_name VARCHAR(100) NOT NULL,
    country_id INT NOT NULL
);


CREATE TABLE properties (
    property_id INT PRIMARY KEY AUTO_INCREMENT,
    host_id INT NOT NULL,
    title VARCHAR(150) NOT NULL,
    description TEXT,
    property_type VARCHAR(50),
    max_guests INT
);


CREATE TABLE addresses (
    address_id INT PRIMARY KEY AUTO_INCREMENT,
    property_id INT NOT NULL UNIQUE,
    street VARCHAR(150),
    postal_code VARCHAR(20),
    city_id INT NOT NULL
);

CREATE TABLE rooms (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    property_id INT NOT NULL,
    room_type VARCHAR(50),
    price_per_night DECIMAL(10,2),
    capacity INT
);

CREATE TABLE payment_methods (
    payment_method_id INT PRIMARY KEY AUTO_INCREMENT,
    method_name VARCHAR(50),
    provider_name VARCHAR(100)
);

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    guest_id INT NOT NULL,
    room_id INT NOT NULL,
    check_in_date DATE,
    check_out_date DATE,
    booking_status VARCHAR(50),
    total_amount DECIMAL(10,2)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT NOT NULL UNIQUE,
    payment_method_id INT NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    amount DECIMAL(10,2),
    payment_status VARCHAR(50)
);

CREATE TABLE amenities (
    amenity_id INT PRIMARY KEY AUTO_INCREMENT,
    amenity_name VARCHAR(100),
    amenity_category VARCHAR(100)
);

CREATE TABLE property_amenities (
    property_id INT NOT NULL,
    amenity_id INT NOT NULL,
    availability_status VARCHAR(50),
    PRIMARY KEY (property_id, amenity_id)
);

CREATE TABLE availability_calendar (
    calendar_id INT PRIMARY KEY AUTO_INCREMENT,
    room_id INT NOT NULL,
    available_date DATE,
    availability_status VARCHAR(50),
    special_price DECIMAL(10,2)
);

CREATE TABLE cancellations (
    cancellation_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT NOT NULL UNIQUE,
    cancelled_by VARCHAR(50),
    cancellation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    refund_amount DECIMAL(10,2),
    reason TEXT
);

CREATE TABLE discounts (
    discount_id INT PRIMARY KEY AUTO_INCREMENT,
    property_id INT NOT NULL,
    discount_type VARCHAR(50),
    discount_value DECIMAL(10,2),
    valid_from DATE,
    valid_to DATE
);


CREATE TABLE messages (
    message_id INT PRIMARY KEY AUTO_INCREMENT,
    sender_user_id INT NOT NULL,
    receiver_user_id INT NOT NULL,
    booking_id INT,
    message_text TEXT,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE wishlists (
    wishlist_id INT PRIMARY KEY AUTO_INCREMENT,
    guest_id INT NOT NULL,
    property_id INT NOT NULL,
    added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE reviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT NOT NULL UNIQUE,
    guest_id INT NOT NULL,
    property_id INT NOT NULL,
    rating_score DECIMAL(2,1),
    review_text TEXT,
    review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE addresses (
    address_id INT PRIMARY KEY AUTO_INCREMENT,
    property_id INT NOT NULL UNIQUE,
    street VARCHAR(150),
    postal_code VARCHAR(20),
    city_id INT NOT NULL
);

SHOW TABLES;

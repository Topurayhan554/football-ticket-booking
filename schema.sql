-- CREATE USERS TABLE
CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    role VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20)
);

-- CREATE MATCHES TABLE

CREATE TABLE matches (
    match_id SERIAL PRIMARY KEY,
    fixture VARCHAR(150) NOT NULL,
    tournament_category VARCHAR(100) NOT NULL,
    base_ticket_price DECIMAL(10,2) NOT NULL,
    match_status VARCHAR(50) NOT NULL
);

-- CREATE BOOKINGS TABLE

CREATE TABLE bookings (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL REFERENCES users(user_id),
    match_id INT NOT NULL REFERENCES matches(match_id),
    seat_number VARCHAR(20),
    payment_status VARCHAR(50),
    total_cost DECIMAL(10,2) NOT NULL
);

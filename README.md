# Football Ticket Booking System - Database Assignment

A simple database design and SQL query assignment for a Football Ticket Booking System.

## Database Schema

Three tables are used in this system:

- **users** - Stores all platform users (Football Fans & Ticket Managers)
- **matches** - Stores all football match details
- **bookings** - Stores all ticket booking transactions

## Entity Relationship Diagram (ERD)

- One User → Many Bookings (One to Many)
- Many Bookings → One Match (Many to One)

## Project Structure

```
football-ticket-booking/
├── schema.sql      # Table definitions + sample data
├── QUERY.sql       # 7 SQL queries
└── README.md       # Project documentation
```

## SQL Queries

| Query | Description |
|-------|-------------|
| Query 1 | Retrieve all Champions League matches with 'Available' status |
| Query 2 | Search users by name using ILIKE (case-insensitive) |
| Query 3 | Find bookings with NULL payment status using COALESCE |
| Query 4 | Join bookings with user and match details using INNER JOIN |
| Query 5 | List all users with their bookings using LEFT JOIN |
| Query 6 | Find bookings above average cost using subquery |
| Query 7 | Get top 2 matches skipping the most expensive using OFFSET & LIMIT |

## Technologies Used

- PostgreSQL
- SQL (DDL & DML)
- Draw.io (ERD Design)

## Author

Topu Rayhan

-- Select all users
SELECT * FROM users;

-- Get active users
SELECT * FROM users WHERE status='active';

-- Count total orders
SELECT COUNT(*) FROM orders;

-- Get orders with user emails
SELECT u.email, o.order_id
FROM users u
JOIN orders o ON u.id = o.user_id;
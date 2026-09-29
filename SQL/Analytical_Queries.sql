--TOP PERFORMING MOVIES
SELECT 
    m.movie_id,
    m.movie_name,
    COUNT(b.booking_id) AS total_bookings
FROM movies m
JOIN shows s ON m.movie_id = s.movie_id
JOIN bookings b ON s.show_id = b.show_id
WHERE b.booking_status = 'confirmed'
GROUP BY m.movie_id, m.movie_name
ORDER BY total_bookings DESC;

--REVENUE PER MOVIE
SELECT 
    m.movie_name,
    SUM(b.total_amount) AS total_revenue
FROM movies m
JOIN shows s ON m.movie_id = s.movie_id
JOIN bookings b ON s.show_id = b.show_id
WHERE b.booking_status = 'confirmed'
GROUP BY m.movie_name
ORDER BY total_revenue DESC;

--TOP PERFORMING MOVIES''
SELECT 
    t.theatre_name,
    SUM(b.total_amount) AS revenue
FROM theatres t
JOIN screens sc ON t.theatre_id = sc.theatre_id
JOIN shows s ON sc.screen_id = s.screen_id
JOIN bookings b ON s.show_id = b.show_id
WHERE b.booking_status = 'confirmed'
GROUP BY t.theatre_name
ORDER BY revenue DESC;

--MOST ACTIVE CUSTOMERS
SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(b.booking_id) AS total_bookings
FROM customers c
JOIN bookings b ON c.customer_id = b.customer_id
WHERE b.booking_status = 'confirmed'
GROUP BY c.customer_id, c.customer_name
ORDER BY total_bookings DESC;

--MONTHLY BOOKING TREND
SELECT 
    DATE_FORMAT(show_date, '%Y-%m') AS month,
    COUNT(b.booking_id) AS total_bookings
FROM shows s
JOIN bookings b ON s.show_id = b.show_id
WHERE b.booking_status = 'confirmed'
GROUP BY month
ORDER BY month;

--OCCUPANCY ANALYSIS
SELECT 
    m.movie_name,
    ROUND(AVG(s.occupancy_percent), 2) AS avg_occupancy
FROM movies m
JOIN shows s ON m.movie_id = s.movie_id
GROUP BY m.movie_name
ORDER BY avg_occupancy DESC;

--FOOD REVENUE ANALYSIS
SELECT 
    f.food_item,
    SUM(f.total_price) AS total_food_revenue
FROM food_orders f
GROUP BY f.food_item
ORDER BY total_food_revenue DESC;

--MOVIE RATINGS
SELECT 
    m.movie_name,
    AVG(r.user_rating) AS avg_rating,
    COUNT(r.review_id) AS total_reviews
FROM movies m
JOIN reviews r ON m.movie_id = r.movie_id
GROUP BY m.movie_name
ORDER BY avg_rating DESC;

--PAYMENT METHOD PREFERENCE
SELECT 
    payment_method,
    COUNT(*) AS usage_count
FROM bookings
GROUP BY payment_method
ORDER BY usage_count DESC;

--SEAT CATEGORY DEMAND
SELECT 
    seat_category,
    COUNT(*) AS bookings_count
FROM bookings
GROUP BY seat_category
ORDER BY bookings_count DESC;


DELETE FROM movies WHERE movie_id IS NULL;
DELETE FROM theatres WHERE theatre_id IS NULL;
DELETE FROM customers WHERE customer_id IS NULL;
DELETE FROM screens WHERE screen_id IS NULL;
DELETE FROM shows WHERE show_id IS NULL;
DELETE FROM bookings WHERE booking_id IS NULL;
DELETE FROM food_orders WHERE food_order_id IS NULL;
DELETE FROM reviews WHERE review_id IS NULL;


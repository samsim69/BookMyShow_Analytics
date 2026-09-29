CREATE TABLE movies (

    movie_id INT PRIMARY KEY,

    movie_name VARCHAR(150),

    genre VARCHAR(50),

    language VARCHAR(50),

    director VARCHAR(100),

    lead_actor VARCHAR(100),

    runtime INT,

    release_date DATE,

    ott_release DATE,

    budget_cr INT,

    box_office_cr DECIMAL(10,2),

    imdb_rating DECIMAL(3,1),

    certificate VARCHAR(10),

    production_house VARCHAR(100),

    status VARCHAR(30),

    popularity_score INT

);

CREATE TABLE theatres (

    theatre_id INT PRIMARY KEY,

    theatre_name VARCHAR(150),

    city VARCHAR(100),

    state VARCHAR(100),

    screen_count INT,

    capacity INT,

    premium VARCHAR(10),

    opening_year INT

);

CREATE TABLE customers (

    customer_id INT PRIMARY KEY,

    customer_name VARCHAR(100),

    gender VARCHAR(20),

    age INT,

    city VARCHAR(100),

    occupation VARCHAR(100),

    membership VARCHAR(30),

    preferred_genre VARCHAR(50),

    preferred_language VARCHAR(50),

    monthly_movie_budget INT,

    food_purchase_probability DECIMAL(4,2),

    app_rating DECIMAL(3,1)

);

CREATE TABLE screens (

    screen_id INT PRIMARY KEY,

    theatre_id INT,

    screen_number INT,

    screen_type VARCHAR(30),

    seat_capacity INT,

    FOREIGN KEY (theatre_id)
        REFERENCES theatres(theatre_id)

);

CREATE TABLE shows (

    show_id INT PRIMARY KEY,

    movie_id INT,

    screen_id INT,

    show_date DATE,

    show_time TIME,

    ticket_price INT,

    seat_capacity INT,

    popularity_score INT,

    occupancy_percent DECIMAL(5,2),

    tickets_sold INT,

    FOREIGN KEY (movie_id)
        REFERENCES movies(movie_id),

    FOREIGN KEY (screen_id)
        REFERENCES screens(screen_id)

);

CREATE TABLE bookings (

    booking_id INT PRIMARY KEY,

    customer_id INT,

    show_id INT,

    seats_booked INT,

    seat_category VARCHAR(30),

    payment_method VARCHAR(30),

    booking_status VARCHAR(30),

    coupon_code VARCHAR(30),

    discount INT,

    convenience_fee INT,

    gst INT,

    total_amount INT,

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    FOREIGN KEY (show_id)
        REFERENCES shows(show_id)

);

CREATE TABLE food_orders (

    food_order_id INT PRIMARY KEY,

    booking_id INT,

    food_item VARCHAR(100),

    quantity INT,

    unit_price INT,

    total_price INT,

    FOREIGN KEY (booking_id)
        REFERENCES bookings(booking_id)

);

CREATE TABLE reviews (

    review_id INT PRIMARY KEY,

    booking_id INT,

    movie_id INT,

    user_rating INT,

    review_comment TEXT,

    FOREIGN KEY (booking_id)
        REFERENCES bookings(booking_id),

    FOREIGN KEY (movie_id)
        REFERENCES movies(movie_id)

);


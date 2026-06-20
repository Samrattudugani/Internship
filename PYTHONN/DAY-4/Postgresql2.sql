-- DROP TABLE IF EXISTS bookings CASCADE;
-- DROP TABLE IF EXISTS theatres CASCADE;
-- DROP TABLE IF EXISTS movies CASCADE;

-- CREATE TABLE movies (
--     movie_id INT PRIMARY KEY,
--     movie_name VARCHAR(100),
--     language VARCHAR(50),
--     duration VARCHAR(20),
--     release_date DATE
-- );

-- INSERT INTO movies VALUES
-- (1,'RRR','TELUGU','190 MIN','2026-03-10'),
-- (2,'PUSHPA 2','TELUGU','190 MIN','2026-04-20'),
-- (3,'JHGKITJJT','TELUGU','130 MIN','2026-05-30'),
-- (4,'FFGFV','HINDI','160 MIN','2026-06-05'),
-- (5,'KGJGHB','TAMIL','223 MIN','2026-07-15');

-- SELECT * FROM movies;


-- CREATE TABLE theatres (
--     theatre_id INT PRIMARY KEY,
--     theatre_name VARCHAR(100),
--     location VARCHAR(100),
--     total_seats INT
-- );

-- INSERT INTO theatres VALUES
-- (1,'CINEPOLIS','KOMPALLY',120),
-- (2,'PRASHANTH','RAMPALLY',100),
-- (3,'IMAX','HYDERABAD',200),
-- (4,'RMAX','SECUNDERABAD',100),
-- (5,'NARTHAKI','LOTHUKUNTA',100);

-- SELECT * FROM theatres;


-- CREATE TABLE bookings (
--     booking_id INT PRIMARY KEY,
--     customer_name VARCHAR(100),
--     movie_id INT,
--     theatre_id INT,
--     booking_date DATE,
--     number_of_tickets INT,
--     FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
--     FOREIGN KEY (theatre_id) REFERENCES theatres(theatre_id)
-- );

-- INSERT INTO bookings VALUES
-- (1,'RAM',2,4,'2026-04-20',5),
-- (2,'JERA',4,3,'2026-06-05',3),
-- (3,'KIRAN',3,2,'2026-05-30',4),
-- (4,'RADHA',1,5,'2026-03-10',6),
-- (5,'HIMANTHA',5,1,'2026-07-15',2),
-- (6,'HARI',1,5,'2026-03-11',4),
-- (7,'ANUJ',2,4,'2026-04-22',9),
-- (8,'PHANI',2,3,'2026-04-21',4),
-- (9,'SANA',4,2,'2026-06-07',2),
-- (10,'ANIK',5,1,'2026-07-17',10);

-- SELECT * FROM bookings;

-- SELECT
--     b.booking_id,
--     b.customer_name,
--     m.movie_name,
--     t.theatre_name,
--     t.location,
--     b.booking_date,
--     b.number_of_tickets
-- FROM bookings b
-- JOIN movies m
-- ON b.movie_id = m.movie_id
-- JOIN theatres t
-- ON b.theatre_id = t.theatre_id;


-- SELECT
--     m.movie_name,
--     SUM(b.number_of_tickets) AS total_tickets_booked
-- FROM movies m
-- JOIN bookings b
-- ON m.movie_id = b.movie_id
-- GROUP BY m.movie_name;

-- SELECT
--     b.booking_id,
--     b.customer_name,
--     m.movie_name,
--     t.theatre_name,
--     b.booking_date,
--     b.number_of_tickets
-- FROM bookings b
-- JOIN movies m
-- ON b.movie_id = m.movie_id
-- JOIN theatres t
-- ON b.theatre_id = t.theatre_id
-- ORDER BY b.booking_date ASC;

-- SELECT
--     b.booking_id,
--     b.customer_name,
--     m.movie_name,
--     t.theatre_name,
--     b.number_of_tickets
-- FROM bookings b
-- JOIN movies m
-- ON b.movie_id = m.movie_id
-- JOIN theatres t
-- ON b.theatre_id = t.theatre_id
-- ORDER BY b.number_of_tickets DESC;

-- DROP TABLE IF EXISTS orders CASCADE;
-- DROP TABLE IF EXISTS food_items CASCADE;
-- DROP TABLE IF EXISTS restaurants CASCADE;

-- CREATE TABLE restaurants (
--     restaurant_id INT PRIMARY KEY,
--     restaurant_name VARCHAR(100),
--     location VARCHAR(100),
--     rating DECIMAL(2,1)
-- );

-- CREATE TABLE food_items (
--     food_id INT PRIMARY KEY,
--     food_name VARCHAR(100),
--     category VARCHAR(50),
--     price DECIMAL(10,2),
--     restaurant_id INT,
--     FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
-- );

-- CREATE TABLE orders (
--     order_id INT PRIMARY KEY,
--     customer_name VARCHAR(100),
--     food_id INT,
--     order_date DATE,
--     quantity INT,
--     FOREIGN KEY (food_id) REFERENCES food_items(food_id)
-- );

-- INSERT INTO restaurants VALUES
-- (1,'Paradise Biryani','Hyderabad',4.5),
-- (2,'Pizza Hub','Secunderabad',4.2),
-- (3,'Tasty Tiffins','Kompally',4.0),
-- (4,'Burger House','Ameerpet',4.3),
-- (5,'Sweet Treats','Begumpet',4.1);

-- INSERT INTO food_items VALUES
-- (101,'Chicken Biryani','Biryani',250.00,1),
-- (102,'Veg Biryani','Biryani',180.00,1),
-- (103,'Mutton Biryani','Biryani',320.00,1),
-- (104,'Margherita Pizza','Pizza',220.00,2),
-- (105,'Farmhouse Pizza','Pizza',300.00,2),
-- (106,'Cheese Burst Pizza','Pizza',350.00,2),
-- (107,'Idli','Tiffin',50.00,3),
-- (108,'Dosa','Tiffin',80.00,3),
-- (109,'Poori','Tiffin',70.00,3),
-- (110,'Veg Burger','Burger',120.00,4),
-- (111,'Chicken Burger','Burger',180.00,4),
-- (112,'French Fries','Snacks',100.00,4),
-- (113,'Gulab Jamun','Sweet',90.00,5),
-- (114,'Ice Cream','Dessert',120.00,5),
-- (115,'Chocolate Cake','Dessert',200.00,5);

-- INSERT INTO orders VALUES
-- (1,'Ram',101,'2026-06-01',2),
-- (2,'Anjali',104,'2026-06-01',1),
-- (3,'Kiran',108,'2026-06-02',3),
-- (4,'Divya',111,'2026-06-02',2),
-- (5,'Sai',101,'2026-06-03',1),
-- (6,'Priya',115,'2026-06-03',2),
-- (7,'Ravi',105,'2026-06-04',1),
-- (8,'Meena',107,'2026-06-04',4),
-- (9,'Arjun',113,'2026-06-05',3),
-- (10,'Samrat',101,'2026-06-05',2);

-- SELECT * FROM restaurants;

-- SELECT * FROM food_items;

-- SELECT * FROM orders;

-- SELECT
--     r.restaurant_name,
--     f.food_name,
--     f.category,
--     f.price
-- FROM restaurants r
-- JOIN food_items f
-- ON r.restaurant_id = f.restaurant_id
-- ORDER BY r.restaurant_name;

-- SELECT
--     o.order_id,
--     o.customer_name,
--     r.restaurant_name,
--     f.food_name,
--     o.order_date,
--     o.quantity,
--     f.price,
--     (o.quantity * f.price) AS total_amount
-- FROM orders o
-- JOIN food_items f
-- ON o.food_id = f.food_id
-- JOIN restaurants r
-- ON f.restaurant_id = r.restaurant_id;

-- SELECT
--     SUM(o.quantity * f.price) AS total_order_amount
-- FROM orders o
-- JOIN food_items f
-- ON o.food_id = f.food_id;

-- SELECT
--     r.restaurant_name,
--     SUM(o.quantity * f.price) AS restaurant_total_amount
-- FROM orders o
-- JOIN food_items f
-- ON o.food_id = f.food_id
-- JOIN restaurants r
-- ON f.restaurant_id = r.restaurant_id
-- GROUP BY r.restaurant_name
-- ORDER BY restaurant_total_amount DESC;

-- SELECT
--     f.food_name,
--     SUM(o.quantity) AS total_quantity_ordered
-- FROM orders o
-- JOIN food_items f
-- ON o.food_id = f.food_id
-- GROUP BY f.food_name
-- ORDER BY total_quantity_ordered DESC
-- LIMIT 1;  

DROP TABLE IF EXISTS service_records CASCADE;
DROP TABLE IF EXISTS vehicles CASCADE;
DROP TABLE IF EXISTS customers CASCADE;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    phone VARCHAR(20),
    address VARCHAR(100)
);

CREATE TABLE vehicles (
    vehicle_id INT PRIMARY KEY,
    customer_id INT,
    vehicle_number VARCHAR(50),
    vehicle_model VARCHAR(100),
    vehicle_type VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE service_records (
    service_id INT PRIMARY KEY,
    vehicle_id INT,
    service_date DATE,
    service_type VARCHAR(100),
    service_cost DECIMAL(10,2),
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id)
);

INSERT INTO customers VALUES
(1,'Ram','9876543210','Hyderabad'),
(2,'Anjali','9876543211','Secunderabad'),
(3,'Kiran','9876543212','Kompally'),
(4,'Divya','9876543213','Ameerpet'),
(5,'Sai','9876543214','Begumpet');

SELECT * FROM customers;

INSERT INTO vehicles VALUES
(101,1,'TS10AB1234','Honda Activa','Two Wheeler'),
(102,2,'TS09CD5678','Hyundai i20','Car'),
(103,3,'TS08EF9012','Royal Enfield','Two Wheeler'),
(104,4,'TS07GH3456','Maruti Swift','Car'),
(105,5,'TS06IJ7890','Toyota Innova','Car');

SELECT * FROM vehicles;

INSERT INTO service_records VALUES
(1,101,'2026-06-01','Oil Change',800),
(2,102,'2026-06-03','General Service',3500),
(3,103,'2026-06-05','Brake Repair',1200),
(4,104,'2026-05-20','Engine Check',2500),
(5,105,'2026-06-07','Full Service',5000),
(6,101,'2026-06-10','Tyre Check',500),
(7,102,'2026-05-15','AC Service',2000);

SELECT * FROM service_records;

SELECT 
    c.customer_name,
    v.vehicle_number,
    v.vehicle_model,
    s.service_type,
    s.service_date,
    s.service_cost
FROM customers c
JOIN vehicles v
ON c.customer_id = v.customer_id
JOIN service_records s
ON v.vehicle_id = s.vehicle_id;

SELECT 
    v.vehicle_number,
    v.vehicle_model,
    SUM(s.service_cost) AS total_service_cost
FROM vehicles v
JOIN service_records s
ON v.vehicle_id = s.vehicle_id
GROUP BY v.vehicle_number, v.vehicle_model;

SELECT *
FROM service_records
WHERE EXTRACT(MONTH FROM service_date) = 6
AND EXTRACT(YEAR FROM service_date) = 2026;


DROP TABLE IF EXISTS mobiles CASCADE;
DROP TABLE IF EXISTS brands CASCADE;

CREATE TABLE brands (
    brand_id INT PRIMARY KEY,
    brand_name VARCHAR(100),
    country VARCHAR(100)
);

CREATE TABLE mobiles (
    mobile_id INT PRIMARY KEY,
    brand_id INT,
    model_name VARCHAR(100),
    price DECIMAL(10,2),
    stock INT,
    FOREIGN KEY (brand_id) REFERENCES brands(brand_id)
);

INSERT INTO brands VALUES
(1,'Samsung','South Korea'),
(2,'Apple','USA'),
(3,'OnePlus','China'),
(4,'Vivo','China'),
(5,'Realme','China');

INSERT INTO mobiles VALUES
(101,1,'Samsung Galaxy S24',79999,10),
(102,1,'Samsung Galaxy A55',35999,20),
(103,1,'Samsung M15',14999,30),
(104,2,'iPhone 15',79900,8),
(105,2,'iPhone 14',69900,12),
(106,2,'iPhone 13',59900,15),
(107,3,'OnePlus 12',64999,10),
(108,3,'OnePlus Nord CE 4',24999,25),
(109,3,'OnePlus 11R',39999,18),
(110,4,'Vivo V30',33999,22),
(111,4,'Vivo Y200',21999,28),
(112,4,'Vivo T3',19999,30),
(113,5,'Realme 12 Pro',25999,20),
(114,5,'Realme Narzo 70',15999,35),
(115,5,'Realme C55',12999,40);

SELECT
    b.brand_name,
    m.model_name,
    m.price,
    m.stock
FROM brands b
JOIN mobiles m ON b.brand_id = m.brand_id;

SELECT *
FROM mobiles
WHERE price > 30000;

SELECT
    b.brand_name,
    SUM(m.stock) AS total_stock
FROM brands b
JOIN mobiles m ON b.brand_id = m.brand_id
GROUP BY b.brand_name;

SELECT
    AVG(price) AS average_price,
    MAX(price) AS highest_price,
    MIN(price) AS lowest_price
FROM mobiles;

SELECT *
FROM mobiles
ORDER BY price DESC;

DROP TABLE IF EXISTS payments CASCADE;
DROP TABLE IF EXISTS membership_plans CASCADE;
DROP TABLE IF EXISTS members CASCADE;

CREATE TABLE members (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(100),
    phone VARCHAR(20),
    join_date DATE
);

CREATE TABLE membership_plans (
    plan_id INT PRIMARY KEY,
    plan_name VARCHAR(100),
    duration VARCHAR(50),
    fee DECIMAL(10,2)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    member_id INT,
    plan_id INT,
    payment_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (member_id) REFERENCES members(member_id),
    FOREIGN KEY (plan_id) REFERENCES membership_plans(plan_id)
);

INSERT INTO members VALUES
(1,'Ram','9876543210','2026-01-01'),
(2,'Anjali','9876543211','2026-01-05'),
(3,'Kiran','9876543212','2026-02-01'),
(4,'Divya','9876543213','2026-02-10'),
(5,'Sai','9876543214','2026-03-01'),
(6,'Ravi','9876543215','2026-03-05'),
(7,'Meena','9876543216','2026-04-01'),
(8,'Arjun','9876543217','2026-04-10'),
(9,'Priya','9876543218','2026-05-01'),
(10,'Samrat','9876543219','2026-05-05');

INSERT INTO membership_plans VALUES
(101,'Monthly Plan','1 Month',1500),
(102,'Quarterly Plan','3 Months',4000),
(103,'Half Yearly Plan','6 Months',7500),
(104,'Yearly Plan','12 Months',12000);

INSERT INTO payments VALUES
(1,1,101,'2026-06-01',1500),
(2,2,102,'2026-06-01',4000),
(3,3,101,'2026-06-02',1500),
(4,4,103,'2026-06-02',7500),
(5,5,104,'2026-06-03',12000),
(6,6,101,'2026-06-03',1500),
(7,7,102,'2026-06-04',4000),
(8,8,101,'2026-06-04',1500),
(9,9,103,'2026-06-05',7500),
(10,10,104,'2026-06-05',12000),
(11,1,101,'2026-07-01',1500),
(12,3,101,'2026-07-02',1500),
(13,6,101,'2026-07-03',1500),
(14,8,101,'2026-07-04',1500),
(15,2,102,'2026-09-01',4000),
(16,7,102,'2026-09-04',4000),
(17,4,103,'2026-12-02',7500),
(18,9,103,'2026-12-05',7500),
(19,5,104,'2027-06-03',12000),
(20,10,104,'2027-06-05',12000);

SELECT
    m.member_name,
    mp.plan_name,
    p.payment_date,
    p.amount
FROM members m
JOIN payments p ON m.member_id = p.member_id
JOIN membership_plans mp ON p.plan_id = mp.plan_id;

SELECT
    SUM(amount) AS total_revenue
FROM payments;

SELECT
    mp.plan_name,
    COUNT(p.member_id) AS total_members,
    SUM(p.amount) AS plan_revenue
FROM membership_plans mp
JOIN payments p ON mp.plan_id = p.plan_id
GROUP BY mp.plan_name;

SELECT
    m.member_name,
    SUM(p.amount) AS total_paid
FROM members m
JOIN payments p ON m.member_id = p.member_id
GROUP BY m.member_name
ORDER BY total_paid DESC;


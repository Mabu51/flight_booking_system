CREATE DATABASE flight_booking;

USE flight_booking;

-- Passengers table
CREATE TABLE passengers (
    passenger_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Flights table
CREATE TABLE flights (
    flight_id INT AUTO_INCREMENT PRIMARY KEY,
    airline VARCHAR(100),
    source VARCHAR(50),
    destination VARCHAR(50),
    departure_time DATETIME,
    arrival_time DATETIME,
    seats_available INT,
    price DECIMAL(10, 2)
);

-- Bookings table
CREATE TABLE bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    passenger_id INT,
    flight_id INT,
    booking_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id),
    FOREIGN KEY (flight_id) REFERENCES flights(flight_id)
);

INSERT INTO flights (airline, source, destination, departure_time, arrival_time, seats_available, price) VALUES
('IndiGo', 'Hyderabad', 'Delhi', '2025-08-01 10:00:00', '2025-08-01 12:00:00', 50, 4500),
('Air India', 'Mumbai', 'Chennai', '2025-08-02 09:00:00', '2025-08-02 11:30:00', 30, 5500),
('SpiceJet', 'Bangalore', 'Kolkata', '2025-08-03 08:00:00', '2025-08-03 11:00:00', 40, 4800),
('Vistara', 'Delhi', 'Goa', '2025-08-04 14:00:00', '2025-08-04 16:30:00', 35, 6000),
('GoAir', 'Chennai', 'Hyderabad', '2025-08-05 06:00:00', '2025-08-05 08:00:00', 45, 4300),
('IndiGo', 'Mumbai', 'Delhi', '2025-08-06 18:00:00', '2025-08-06 20:00:00', 55, 5200),
('Air India', 'Kolkata', 'Bangalore', '2025-08-07 07:30:00', '2025-08-07 10:30:00', 25, 4700),
('SpiceJet', 'Goa', 'Mumbai', '2025-08-08 13:00:00', '2025-08-08 14:30:00', 20, 3900),
('Vistara', 'Delhi', 'Kolkata', '2025-08-09 11:00:00', '2025-08-09 13:30:00', 30, 5700),
('GoAir', 'Bangalore', 'Hyderabad', '2025-08-10 16:00:00', '2025-08-10 17:30:00', 50, 4100),

('IndiGo', 'Delhi', 'Mumbai', '2025-08-11 09:00:00', '2025-08-11 11:00:00', 60, 5000),
('Air India', 'Hyderabad', 'Chennai', '2025-08-12 07:00:00', '2025-08-12 09:00:00', 40, 4400),
('SpiceJet', 'Mumbai', 'Goa', '2025-08-13 17:00:00', '2025-08-13 18:15:00', 35, 3800),
('Vistara', 'Chennai', 'Delhi', '2025-08-14 06:00:00', '2025-08-14 09:00:00', 30, 6100),
('GoAir', 'Kolkata', 'Mumbai', '2025-08-15 20:00:00', '2025-08-15 22:30:00', 25, 5500),
('IndiGo', 'Bangalore', 'Goa', '2025-08-16 15:00:00', '2025-08-16 16:45:00', 45, 4700),
('Air India', 'Delhi', 'Bangalore', '2025-08-17 08:00:00', '2025-08-17 10:30:00', 40, 4900),
('SpiceJet', 'Goa', 'Hyderabad', '2025-08-18 13:30:00', '2025-08-18 15:00:00', 28, 4300),
('Vistara', 'Mumbai', 'Kolkata', '2025-08-19 06:30:00', '2025-08-19 09:30:00', 32, 5400),
('GoAir', 'Hyderabad', 'Delhi', '2025-08-20 12:00:00', '2025-08-20 14:30:00', 50, 4600),

('IndiGo', 'Chennai', 'Bangalore', '2025-08-21 07:00:00', '2025-08-21 08:30:00', 50, 4100),
('Air India', 'Delhi', 'Kolkata', '2025-08-22 09:00:00', '2025-08-22 11:30:00', 36, 5600),
('SpiceJet', 'Bangalore', 'Chennai', '2025-08-23 14:00:00', '2025-08-23 15:30:00', 30, 4000),
('Vistara', 'Mumbai', 'Delhi', '2025-08-24 18:00:00', '2025-08-24 20:00:00', 42, 5300),
('GoAir', 'Goa', 'Chennai', '2025-08-25 10:00:00', '2025-08-25 12:30:00', 28, 4700),
('IndiGo', 'Kolkata', 'Hyderabad', '2025-08-26 06:30:00', '2025-08-26 09:00:00', 35, 4900),
('Air India', 'Bangalore', 'Delhi', '2025-08-27 11:00:00', '2025-08-27 13:30:00', 25, 5200),
('SpiceJet', 'Chennai', 'Kolkata', '2025-08-28 16:00:00', '2025-08-28 18:30:00', 22, 5500),
('Vistara', 'Delhi', 'Goa', '2025-08-29 13:00:00', '2025-08-29 15:30:00', 34, 5800),
('GoAir', 'Mumbai', 'Hyderabad', '2025-08-30 08:30:00', '2025-08-30 10:00:00', 40, 4200),

('IndiGo', 'Hyderabad', 'Bangalore', '2025-09-01 12:00:00', '2025-09-01 13:30:00', 48, 4100),
('Air India', 'Chennai', 'Goa', '2025-09-02 09:30:00', '2025-09-02 11:45:00', 26, 4600),
('SpiceJet', 'Mumbai', 'Kolkata', '2025-09-03 20:00:00', '2025-09-03 23:00:00', 29, 5400),
('Vistara', 'Hyderabad', 'Mumbai', '2025-09-04 17:30:00', '2025-09-04 19:00:00', 33, 4400),
('GoAir', 'Bangalore', 'Delhi', '2025-09-05 05:30:00', '2025-09-05 08:00:00', 38, 4900),
('IndiGo', 'Delhi', 'Chennai', '2025-09-06 06:00:00', '2025-09-06 09:00:00', 44, 5300),
('Air India', 'Goa', 'Bangalore', '2025-09-07 07:30:00', '2025-09-07 09:00:00', 41, 4200),
('SpiceJet', 'Kolkata', 'Chennai', '2025-09-08 10:00:00', '2025-09-08 12:30:00', 24, 5100),
('Vistara', 'Mumbai', 'Bangalore', '2025-09-09 14:00:00', '2025-09-09 16:00:00', 35, 4500),
('GoAir', 'Delhi', 'Hyderabad', '2025-09-10 15:00:00', '2025-09-10 17:30:00', 39, 4700),

('IndiGo', 'Hyderabad', 'Kolkata', '2025-09-11 10:30:00', '2025-09-11 13:00:00', 36, 5200),
('Air India', 'Chennai', 'Delhi', '2025-09-12 18:30:00', '2025-09-12 21:30:00', 30, 5800),
('SpiceJet', 'Bangalore', 'Mumbai', '2025-09-13 19:00:00', '2025-09-13 21:00:00', 46, 5000),
('Vistara', 'Kolkata', 'Goa', '2025-09-14 06:00:00', '2025-09-14 09:00:00', 25, 6000),
('GoAir', 'Mumbai', 'Chennai', '2025-09-15 11:00:00', '2025-09-15 13:30:00', 50, 4900);

INSERT INTO passengers (name, email, phone) VALUES
('Amit Kumar', 'amit.kumar1@example.com', '9876543210'),
('Sneha Reddy', 'sneha.reddy2@example.com', '9876543211'),
('Rahul Mehta', 'rahul.mehta3@example.com', '9876543212'),
('Priya Sharma', 'priya.sharma4@example.com', '9876543213'),
('Ravi Patel', 'ravi.patel5@example.com', '9876543214'),
('Kiran Kumar', 'kiran.kumar6@example.com', '9876543215'),
('Anjali Das', 'anjali.das7@example.com', '9876543216'),
('Vikram Singh', 'vikram.singh8@example.com', '9876543217'),
('Divya Nair', 'divya.nair9@example.com', '9876543218'),
('Harsh Gupta', 'harsh.gupta10@example.com', '9876543219'),
('Meena Joshi', 'meena.joshi11@example.com', '9876543220'),
('Karthik R', 'karthik.r12@example.com', '9876543221'),
('Ayesha Khan', 'ayesha.khan13@example.com', '9876543222'),
('Manoj Tiwari', 'manoj.tiwari14@example.com', '9876543223'),
('Nikita Jain', 'nikita.jain15@example.com', '9876543224'),
('Suresh Das', 'suresh.das16@example.com', '9876543225'),
('Pooja Verma', 'pooja.verma17@example.com', '9876543226'),
('Alok Mishra', 'alok.mishra18@example.com', '9876543227'),
('Swati Sen', 'swati.sen19@example.com', '9876543228'),
('Rajiv Menon', 'rajiv.menon20@example.com', '9876543229'),
('Jyoti Sharma', 'jyoti.sharma21@example.com', '9876543230'),
('Sunil Nair', 'sunil.nair22@example.com', '9876543231'),
('Komal Desai', 'komal.desai23@example.com', '9876543232'),
('Varun Bhat', 'varun.bhat24@example.com', '9876543233'),
('Neha Rathi', 'neha.rathi25@example.com', '9876543234'),
('Deepak Roy', 'deepak.roy26@example.com', '9876543235'),
('Rekha Iyer', 'rekha.iyer27@example.com', '9876543236'),
('Mohit Goel', 'mohit.goel28@example.com', '9876543237'),
('Tina Kapoor', 'tina.kapoor29@example.com', '9876543238'),
('Anand Kulkarni', 'anand.kulkarni30@example.com', '9876543239'),
('Ruchi Rana', 'ruchi.rana31@example.com', '9876543240'),
('Dinesh Rao', 'dinesh.rao32@example.com', '9876543241'),
('Pallavi Bhatt', 'pallavi.bhatt33@example.com', '9876543242'),
('Ajay Singh', 'ajay.singh34@example.com', '9876543243'),
('Sana Sheikh', 'sana.sheikh35@example.com', '9876543244'),
('Vivek Agarwal', 'vivek.agarwal36@example.com', '9876543245'),
('Ishita Bose', 'ishita.bose37@example.com', '9876543246'),
('Rohan Dey', 'rohan.dey38@example.com', '9876543247'),
('Naina Pandey', 'naina.pandey39@example.com', '9876543248'),
('Kapil Joshi', 'kapil.joshi40@example.com', '9876543249'),
('Anu Yadav', 'anu.yadav41@example.com', '9876543250'),
('Siddharth Singh', 'siddharth.singh42@example.com', '9876543251'),
('Ritika Mathur', 'ritika.mathur43@example.com', '9876543252'),
('Jayant Reddy', 'jayant.reddy44@example.com', '9876543253'),
('Aparna Ghosh', 'aparna.ghosh45@example.com', '9876543254'),
('Kunal Verma', 'kunal.verma46@example.com', '9876543255'),
('Shweta Kapoor', 'shweta.kapoor47@example.com', '9876543256'),
('Ramesh Babu', 'ramesh.babu48@example.com', '9876543257'),
('Tanvi Shah', 'tanvi.shah49@example.com', '9876543258'),
('Arjun Iyer', 'arjun.iyer50@example.com', '9876543259');

INSERT INTO bookings (passenger_id, flight_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 1), (12, 2), (13, 3), (14, 4), (15, 5),
(16, 6), (17, 7), (18, 8), (19, 9), (20, 10),
(21, 1), (22, 2), (23, 3), (24, 4), (25, 5),
(26, 6), (27, 7), (28, 8), (29, 9), (30, 10),
(31, 1), (32, 2), (33, 3), (34, 4), (35, 5),
(36, 6), (37, 7), (38, 8), (39, 9), (40, 10),
(41, 1), (42, 2), (43, 3), (44, 4), (45, 5),
(46, 6), (47, 7), (48, 8), (49, 9), (50, 10);

#Query 1: Number of bookings per flight
SELECT f.flight_id, f.airline, COUNT(b.booking_id) AS num_bookings
FROM bookings b
JOIN flights f ON b.flight_id = f.flight_id
GROUP BY f.flight_id, f.airline
ORDER BY num_bookings DESC;

# Query 2: Top 5 source-destination pairs with most bookings
SELECT f.source, f.destination, COUNT(b.booking_id) AS num_bookings
FROM bookings b
JOIN flights f ON b.flight_id = f.flight_id
GROUP BY f.source, f.destination
ORDER BY num_bookings DESC
LIMIT 5;

#Query 3: Total revenue per airline
SELECT f.airline, SUM(f.price) AS total_revenue
FROM bookings b
JOIN flights f ON b.flight_id = f.flight_id
GROUP BY f.airline
ORDER BY total_revenue DESC;

# Query 4: Bookings over time (by day)
SELECT DATE(booking_time) AS booking_date, COUNT(*) AS num_bookings
FROM bookings
GROUP BY booking_date
ORDER BY booking_date;

#Query 5: Passengers with Most Bookings
SELECT p.name, COUNT(b.booking_id) AS total_bookings
FROM bookings b
JOIN passengers p ON b.passenger_id = p.passenger_id
GROUP BY p.name
ORDER BY total_bookings DESC
LIMIT 10;





# ✈️ Flight Booking System — Mini Project

## 📋 Project Overview
This is a **Flight Booking System** built using:
- **MySQL Workbench** — for database and queries
- **Python** — for interacting with the database and visualizing data
- **Matplotlib & Pandas** — for charts & analysis

It allows you to:
✅ Manage flights and passengers  
✅ Take and store bookings  
✅ Visualize real-time analytics on bookings and revenue

---

## 🗄️ Database Schema

### 1️⃣ Table: `flights`
| Column           | Type          |
|------------------|---------------|
| flight_id        | INT (PK)      |
| airline          | VARCHAR       |
| source           | VARCHAR       |
| destination      | VARCHAR       |
| departure_time   | DATETIME      |
| arrival_time     | DATETIME      |
| seats_available  | INT           |
| price            | DECIMAL       |

### 2️⃣ Table: `passengers`
| Column           | Type          |
|------------------|---------------|
| passenger_id     | INT (PK)      |
| name             | VARCHAR       |
| email            | VARCHAR       |
| phone            | VARCHAR       |

### 3️⃣ Table: `bookings`
| Column           | Type          |
|------------------|---------------|
| booking_id       | INT (PK)      |
| passenger_id     | INT (FK)      |
| flight_id        | INT (FK)      |
| booking_time     | DATETIME      |

---

## 🚀 Features

- Add flights and passengers
- Book flights for passengers
- Track bookings and revenue
- View analytics (charts)

---

## 🖥️ Setup & Run

### 🧩 Prerequisites
✅ MySQL Server + Workbench  
✅ Python 3.x  
✅ Python Packages:
```bash
pip install mysql-connector-python pandas matplotlib
```

---

## 🗄️ Database Setup

### Step 1: Create Database
```sql
CREATE DATABASE flight_booking;
USE flight_booking;
```

### Step 2: Create Tables
```sql
-- flights

-- passengers

-- bookings

```

### Step 3: Insert Sample Data
✅ Insert **50 passengers**, **10–50 flights**, and **50 bookings** (SQL provided earlier).  
You can use the following example:
```sql
INSERT INTO bookings (passenger_id, flight_id, booking_time) VALUES
(1, 1, NOW()), (2, 2, NOW()), … (50, 10, NOW());
```

---

## 📊 Analytics & Visualization

Run the Python scripts provided  to generate:
- Bookings per airline
- Revenue by city
- Top 5 routes
- Bookings over time
- Top 10 passengers


---

## 📄 Files in This Project
✅ `flight_booking.sql` — SQL script to create tables   
✅ `bookings.py` — Python script with queries and matplotlib visualizations  
✅ `README.md` — This file

---

## 📧 Contact
**Author:** SK. Mabunnisa 


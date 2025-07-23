import mysql.connector
import pandas as pd
import matplotlib.pyplot as plt

conn = mysql.connector.connect(
    host="localhost", user="root", password="Khasim51@", database="flight_booking"
)

query1 = """
SELECT f.airline, COUNT(b.booking_id) AS num_bookings
FROM bookings b
JOIN flights f ON b.flight_id = f.flight_id
GROUP BY f.airline
ORDER BY num_bookings DESC;
"""

df1 = pd.read_sql(query1, conn)

plt.figure(figsize=(8,6))
plt.bar(df1['airline'], df1['num_bookings'], color='skyblue')
plt.title("Number of Bookings per Airline")
plt.xlabel("Airline")
plt.ylabel("Bookings")
plt.xticks(rotation=45)
plt.tight_layout()
plt.show()

#Query 2: Top 5 source-destination pairs with most bookings
query2 = """
SELECT CONCAT(f.source, ' → ', f.destination) AS route, COUNT(b.booking_id) AS num_bookings
FROM bookings b
JOIN flights f ON b.flight_id = f.flight_id
GROUP BY f.source, f.destination
ORDER BY num_bookings DESC
LIMIT 5;
"""

df2 = pd.read_sql(query2, conn)

plt.pie(df2['num_bookings'], labels=df2['route'], autopct='%1.1f%%', startangle=140)
plt.title("Top 5 Routes by Bookings")
plt.show()

#Query 3: Total revenue per airline
query3 = """
SELECT f.airline, SUM(f.price) AS total_revenue
FROM bookings b
JOIN flights f ON b.flight_id = f.flight_id
GROUP BY f.airline
ORDER BY total_revenue DESC;
"""

df3 = pd.read_sql(query3, conn)

plt.barh(df3['airline'], df3['total_revenue'], color='green')
plt.title("Total Revenue per Airline")
plt.xlabel("Revenue (₹)")
plt.ylabel("Airline")
plt.tight_layout()
plt.show()

# Query 4: Bookings over time (by day)
query4 = """
SELECT DATE(booking_time) AS booking_date, COUNT(*) AS num_bookings
FROM bookings
GROUP BY booking_date
ORDER BY booking_date;
"""

df4 = pd.read_sql(query4, conn)

plt.plot(df4['booking_date'], df4['num_bookings'], marker='o')
plt.title("Bookings Over Time")
plt.xlabel("Date")
plt.ylabel("Number of Bookings")
plt.xticks(rotation=45)
plt.tight_layout()
plt.show()

#Query 5: Passengers with Most Bookings
q5 = """
SELECT p.name, COUNT(b.booking_id) AS total_bookings
FROM bookings b
JOIN passengers p ON b.passenger_id = p.passenger_id
GROUP BY p.name
ORDER BY total_bookings DESC
LIMIT 10;
"""

df5 = pd.read_sql(q5, conn)

plt.bar(df5['name'], df5['total_bookings'], color='purple')
plt.title("Top 10 Passengers by Bookings")
plt.xlabel("Passenger")
plt.ylabel("Bookings")
plt.xticks(rotation=45)
plt.tight_layout()
plt.show()


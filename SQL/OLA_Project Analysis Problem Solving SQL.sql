
--1)Retrieve All Successful Bookings
CREATE VIEW Successful_Bookings AS 
(
SELECT 
*
FROM Bookings 
WHERE Booking_status = 'Success'
)
--1)Retrieve All Successful Bookings
SELECT *
FROM Successful_Bookings;

--2)Find The Average Ride Distance For Each Vehicle Type:
CREATE VIEW Ride_Distance_For_Each_Vehicle AS
(
SELECT
Vehicle_Type,
AVG(Ride_Distance) AS Avg_Ride_Distance
FROM Bookings
GROUP BY Vehicle_Type
)
--2)Find The Average Ride Distance For Each Vehicle Type:
SELECT * FROM Ride_Distance_For_Each_Vehicle

--3)get the total number of cancelled ride by customers
CREATE VIEW cancelled_ride_by_customers AS
(
SELECT
COUNT(*) AS TotalCustomers
FROM Bookings
WHERE Booking_Status = 'Canceled by Customer'
)
--3)get the total number of cancelled ride by customers
SELECT * FROM cancelled_ride_by_customers

--4).list the top 5 customers who booked the highest number of rides
CREATE VIEW top_5_customers AS
(
SELECT top 5 
Customer_ID,
COUNT(Booking_ID) AS Totao_Rides
FROM Bookings
GROUP BY Customer_ID
ORDER BY Totao_Rides DESC
)
--4).list the top 5 customers who booked the highest number of rides
SELECT * FROM top_5_customers

--5).get the number of rides cancel by drive due to personal and car related issue:
CREATE VIEW No_Of_Rides_cancel_By_Driver AS
(
SELECT
COUNT(Canceled_Rides_by_Driver) AS no_of_rides_cancel
FROM Bookings 
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue'
)

--5).get the number of rides cancel by drive due to personal and car related issue:
SELECT * FROM No_Of_Rides_cancel_By_Driver

--6)find the maximum and minimum driver rating for prime sedan booking 
CREATE VIEW Driver_Rating AS
(
SELECT
MAX(Driver_Ratings) AS Max_Rating,
MIN(Driver_Ratings) AS Min_Rating
FROM Bookings
)
--6)find the maximum and minimum driver rating for prime sedan booking
SELECT * FROM Driver_Rating


--7)retrieve all rides where payment was made using UPI;
CREATE VIEW UPI_Method AS
(
SELECT
* FROM Bookings
WHERE Payment_Method = 'UPI'
)
--7)retrieve all rides where payment was made using UPI;
SELECT * FROM UPI_Method

--8)find the average customer rating per vehicle type
CREATE VIEW customer_rating_per_vehicle AS
(
SELECT
Vehicle_Type,
AVG(Customer_Rating) AS avg_customer_rating
FROM Bookings
GROUP BY Vehicle_Type
)
--8)find the average customer rating per vehicle type
SELECT * FROM customer_rating_per_vehicle

--9) calculate the total booking value of rides complete successfully 
CREATE VIEW total_booking_value AS
(
SELECT
SUM(Booking_Value) AS Total_Booking_Values
FROM Bookings
WHERE Booking_status = 'success'
)
--9) calculate the total booking value of rides complete successfully 
SELECT * FROM total_booking_value

--10)list all incomplete rides along with the reason
CREATE VIEW incomplete_ride_reason_with_reason AS
(
SELECT
Booking_ID,
Incomplete_Rides_Reason
FROM Bookings
WHERE Incomplete_Rides = 1
)
--10)list all incomplete rides along with the reason
SELECT * FROM incomplete_ride_reason_with_reason



--1.Retrieve All Successful Bookings
SELECT * FROM Successful_Bookings;

--2.Find The Average Ride Distance For Each Vehicle Type
SELECT * FROM Ride_Distance_For_Each_Vehicle


--3.get the total number of cancelled ride by customers
SELECT * FROM cancelled_ride_by_customers


--4.list the top 5 customers who booked the highest number of rides
SELECT * FROM top_5_customers


--5.get the number of rides cancel by drive due to personal and car related issue:
SELECT * FROM No_Of_Rides_cancel_By_Driver

--6.find the maximum and minimum driver rating for prime sedan booking
SELECT * FROM Driver_Rating

--7.retrieve all rides where payment was made using UPI;
SELECT * FROM UPI_Method


--8.find the average customer rating per vehicle type
SELECT * FROM customer_rating_per_vehicle


--9.calculate the total booking value of rides complete successfully 
SELECT * FROM total_booking_value


--10.list all incomplete rides along with the reason
SELECT * FROM incomplete_ride_reason_with_reason


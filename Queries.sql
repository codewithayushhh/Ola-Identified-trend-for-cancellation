#1. Retrieve all successful bookings.

SELECT * FROM Bookings 
WHERE Booking_Status = 'Success';

#2. Find the average ride distance of each vehicle type.

SELECT Vehicle_Type, AVG(Ride_Distance) AS Avg_ride_distance FROM Bookings
GROUP BY Vehicle_Type;

#3. Get the total number of canceled rides by customers.

SELECT COUNT(*) FROM Bookings WHERE Booking_Status = 'Canceled by Customer';

#4. List the top 5 customers who booked the highest number of rides.

SELECT Customer_ID, COUNT(Booking_ID) AS total_rides FROM Bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;
SHOW FULL TABLES IN ola WHERE TABLE_TYPE = 'VIEW';

#5. Get the number of rides cancelled by drivers due to personal and carrelated issues.

SELECT COUNT(*) FROM Bookings
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

#6. Find the maximum and minimum driver ratings for prime sedanbookings.

SELECT MAX(Driver_Ratings) AS max_rating, MIN(Driver_Ratings) AS min_rating 
FROM Bookings WHERE Vehicle_Type = 'Prime Sedan';

#7. Retrieve all rides where payment was made using UPI.

SELECT * FROM Bookings WHERE Payment_Method = 'UPI';

#8. Find the average customer rating per vehicle type.

SELECT Vehicle_Type, AVG(Customer_Rating) AS Avg_customer_rating
FROM Bookings
GROUP BY Vehicle_Type;

#9. Calculate the total booking value of rides completed successfully.

SELECT SUM(Booking_Value) FROM Bookings WHERE Booking_Status = 'Success';

#10.List all incomplete rides along with the reason.

SELECT Booking_ID, Incomplete_Rides_Reason FROM Bookings
WHERE Incomplete_Rides = 'Yes';


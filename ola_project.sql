Create Database Ola;
Use Ola;
#1. Retrieve all successful bookings:
Create View Successful_Bookings As
SELECT *FROM bookings
WHERE Booking_Status = 'Success';
#1. Retrieve all successful bookings:
Select * From Successful_Bookings;

#2. Find the average ride distance for each vehicle type:
Create View ride_distance_for_each_vehicle As
SELECT Vehicle_Type, AVG(Ride_Distance)
as avg_distance FROM bookings
GROUP BY Vehicle_Type;
Select * From ride_distance_for_each_vehicle;

#3. Get the total number of cancelled rides by customers:
SELECT COUNT(*) FROM bookings 
WHERE Booking_Status = 'cancelled by Customer';

#4. List the top 5 customers who booked the highest number of rides:
SELECT Customer_ID, COUNT(Booking_ID) as total_rides 
FROM bookings
GROUP BY Customer_ID 
ORDER BY total_rides DESC LIMIT 5;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
SELECT COUNT(*) FROM bookings
WHERE canceled_Rides_by_Driver = 'Personal & Car related issue';
 
#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT MAX(Driver_Ratings) as max_rating, 
MIN(Driver_Ratings) as min_rating 
FROM bookings WHERE Vehicle_Type = 'Prime Sedan';

#7. Retrieve all rides where payment was made using UPI:
SELECT * FROM bookings
 WHERE Payment_Method = 'UPI';
 
#8. Find the average customer rating per vehicle type:
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
 FROM bookings
GROUP BY Vehicle_Type;

#9. Calculate the total booking value of rides completed successfully:
SELECT SUM(Booking_Value) as total_successful_value 
FROM bookings 
WHERE Booking_Status = 'Success';

#10. List all incomplete rides along with the reason:
SELECT Booking_ID, Incomplete_Rides_Reason
 FROM bookings 
 WHERE Incomplete_Rides = 'Yes';
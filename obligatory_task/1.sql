select COUNT(Pass_in_trip.trip) AS count, Passenger.name
FROM Pass_in_trip, Passenger
WHERE Pass_in_trip.passenger = Passenger.id
GROUP BY Passenger.name
HAVING count >= 1
ORDER BY count DESC , Passenger.name ASC  
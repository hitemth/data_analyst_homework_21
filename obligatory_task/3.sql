SELECT Rooms.*
FROM Rooms
INNER JOIN Reservations on Rooms.id = Reservations.room_id
    WHERE WEEK(Reservations.start_date, 1)<=12 and YEAR(Reservations.start_date) = 2020 and WEEK(Reservations.end_date,1)>=12
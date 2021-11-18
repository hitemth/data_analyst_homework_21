SELECT TIMEDIFF((select end_pair from Timepair where id = 4), (select start_pair from Timepair where id = 2)) AS time 
FROM Timepair
LIMIT 1
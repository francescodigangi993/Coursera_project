-- This query creates two tables for departure and arrival stations, which are then combined 
-- using a FULL OUTER JOIN to identify any stations that do not have matches between the two lists.

WITH t1 AS (SELECT DISTINCT start_station_name
			FROM annual_rides),
	 t2 AS (SELECT DISTINCT end_station_name
			FROM annual_rides)
SELECT *
FROM t1
FULL OUTER JOIN t2 ON t1.start_station_name=t2.end_station_name
WHERE end_station_name IS NULL OR start_station_name IS NULL

--Discovered two stations unique to 'start_station' and one unique to 'end_station', 
--explaining the mismatch in the total counts.

--This query create the new table for the station with new progressive numeric id

CREATE TABLE new_station_id AS
SELECT 
    row_number() OVER (ORDER BY station_name) AS station_id,
	-- Crea l'ID progressivo 1, 2, 3...
    station_name
FROM (
    SELECT start_station_name AS station_name FROM annual_rides WHERE start_station_name IS NOT NULL
    UNION
    SELECT end_station_name AS station_name FROM annual_rides WHERE end_station_name IS NOT NULL

) AS station_names;

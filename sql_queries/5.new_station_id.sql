--Questa query crea la tabella con il nuovo id delle stazioni
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
--Beacuse we have a problem with the insertion of data i want to control the data that
--can have issues, the station_id.
SELECT count(start_station_id),
		start_station_id,
		start_station_name
FROM public.annual_rides
GROUP BY start_station_id, 
		start_station_name
		ORDER BY start_station_name
--After the query i discover that all the station seems to have double id maybe for a 
--change in the naming
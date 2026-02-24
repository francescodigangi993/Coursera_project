--This query shows the number of different id_number for each station
with t2 as 
(WITH t1 AS (SELECT count(distinct start_station_id) as n_id,
		start_station_name
		 FROM public.annual_rides
		 GROUP BY start_station_name
		 ORDER BY start_station_name)
		select 
				start_station_name,
				n_id
		From t1
		Group BY start_station_name,n_id)
SELECT count(start_station_name) as st_num,
		n_id
		from t2
		GROUP BY n_id

		

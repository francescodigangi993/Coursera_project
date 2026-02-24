SELECT COUNT(DISTINCT start_station_name) AS start_st,
	   COUNT(DISTINCT end_station_name) AS end_st
FROM annual_rides

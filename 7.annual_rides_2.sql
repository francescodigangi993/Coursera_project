CREATE TABLE annual_rides_2 AS
(SELECT r.ride_id,
		r.rideable_type,
		r.start_date,
		TO_CHAR(r.start_date, 'Day') AS day_of_week,
		r.start_time,
		r.end_date,
		r.end_time,
		r.duration_minutes,
		r.start_station_name,
		r.start_station_id,
		r.end_station_name,
		s.station_id AS end_station_id,
		r.start_lat,
		r.start_lng,
		r.end_lat,
		r.end_lng,
		r.member_casual
FROM public.annual_rides_1 AS r
LEFT JOIN new_station_id AS s ON r.end_station_name=s.station_name
)
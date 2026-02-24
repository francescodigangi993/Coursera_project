CREATE TABLE annual_rides_1 AS
(SELECT r.ride_id,
		r.rideable_type,
		CAST(r.started_at AS DATE) AS start_date,
		CAST(r.started_at AS TIME) AS start_time,
		CAST(r.ended_at AS DATE) AS end_date,
		CAST(r.ended_at AS TIME) AS end_time,
		ROUND(CAST(EXTRACT(EPOCH FROM (r.ended_at - r.started_at)) / 60 AS NUMERIC), 2) AS duration_minutes,
		r.start_station_name,
		s.station_id AS start_station_id,
		r.end_station_name,
		r.start_lat,
		r.start_lng,
		r.end_lat,
		r.end_lng,
		r.member_casual
FROM public.annual_rides AS r
LEFT JOIN new_station_id as s ON r.start_station_name=s.station_name)


CREATE TABLE mean AS  (
SELECT 
    member_casual,
    COUNT(*) AS total_trip,
    ROUND(AVG(duration_minutes), 2) AS mean_duration,
    day_of_week,
    COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() AS percentage
FROM annual_rides_3
GROUP BY member_casual, day_of_week
ORDER BY member_casual, totale_viaggi DESC;
)
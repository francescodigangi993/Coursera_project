--This query exports only the essential data for Tableau. Since unique User IDs are unavailable, 
--route-level analysis (specific paths) is excluded as it is impossible to track individual user behavior or recurring patterns.

CREATE TABLE tableau_export AS
SELECT 
    start_date,
    day_of_week,
    EXTRACT(HOUR FROM start_time) AS hour_of_day,
    member_casual,
    rideable_type,
    COUNT(*) AS total_rides,
    ROUND(AVG(duration_minutes), 2) AS avg_duration
FROM annual_rides_3

GROUP BY 1, 2, 3, 4, 5;


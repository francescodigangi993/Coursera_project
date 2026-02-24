-- This query removes rides with a duration of less than one minute.

CREATE TABLE annual_rides_3 AS (SELECT *
FROM public.annual_rides_2
WHERE duration_minutes>1)


--Questa query mi permettera di esportare su tableau solo i dati effettivamente importanti
--Poiche non abbiamo un id_utente non abbiamo bisogno di analizzare l etratte, perche non
--possiamo sapere se i member fanno sempre la stessa strada ad esempio
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
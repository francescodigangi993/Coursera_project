--Questa query crea due tabelle con le stazioni di andata e di ritorno che vengono unite 
--con un FULL OUTER JOIN per vedere quali stazioni non hanno corrispondenze tra le due
--liste
WITH t1 AS (SELECT DISTINCT start_station_name
			FROM annual_rides),
	 t2 AS (SELECT DISTINCT end_station_name
			FROM annual_rides)
SELECT *
FROM t1
FULL OUTER JOIN t2 ON t1.start_station_name=t2.end_station_name
WHERE end_station_name IS NULL OR start_station_name IS NULL
--Abbiamo trovato 2 stazioni che figurano solo in start e una solo in end. Questo spiega
--anche la discrepanza nel conteggio dei dati
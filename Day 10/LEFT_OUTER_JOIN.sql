--OUTER LEFT JOIN
--find which aircraft used by which flight
SELECT * FROM aircrafts_data a
LEFT JOIN flights f
ON a.aircraft_code=f.aircraft_code


--find aircraft not used
SELECT * FROM aircrafts_data a
LEFT JOIN flights f
ON a.aircraft_code=f.aircraft_code
WHERE f.aircraft_code IS NULL


--give count
SELECT COUNT(*) FROM aircrafts_data a
LEFT JOIN flights f
ON a.aircraft_code=f.aircraft_code
WHERE f.aircraft_code is NULL



--challenges 
--challenge 1
--find seats used more frequently no direct group by 
--bcz seats may not have used so check

SELECT s.seat_no , COUNT(*) FROM seats s
LEFT JOIN boarding_passes b
ON s.seat_no=b.seat_no
-- WHERE b.seat_no is 
GROUP BY s.seat_no
ORDER BY count(*) DESC

--challenge 2
-- WHICH LINE IS USED MOST
SELECT RIGHT(s.seat_no,1) , COUNT(*) FROM seats s
LEFT JOIN boarding_passes b
ON s.seat_no=b.seat_no
-- WHERE b.seat_no is 
GROUP BY RIGHT(s.seat_no,1)
ORDER BY count(*) DESC


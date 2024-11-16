--COALESCE
--return first value of list of values which id not null

SELECT 
COALESCE(actual_arrival-scheduled_arrival,'00:00:00')
FROM flights



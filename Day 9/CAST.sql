-CAST
--change data type of value
--CAST(value AS data type)


SELECT
CAST(scheduled_arrival AS DATE)
FROM flights


--CAST and COALESCE

SELECT
COALESCE (CAST(actual_arrival-scheduled_arrival AS VARCHAR)
 ,'not arrived')
 FROM flights

--cast varchar to bigint
SELECT
CAST(ticket_no AS bigint)
from tickets
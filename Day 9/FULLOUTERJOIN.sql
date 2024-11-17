--FULL OUTER JOIN
SELECT
* FROM boarding_passes b
FULL OUTER JOIN tickets t
ON b.ticket_no=t.ticket_no


--challenge
--find tickets with no boarding pass attached to them
SELECT
* FROM boarding_passes b
FULL OUTER JOIN tickets t
ON b.ticket_no=t.ticket_no
WHERE b.ticket_no IS null


--COUNT THEM
SELECT
COUNT(*) FROM boarding_passes b
FULL OUTER JOIN tickets t
ON b.ticket_no=t.ticket_no
WHERE b.ticket_no is NULL
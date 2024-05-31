/* What is the longest time between Evanston 311 requests being submitted?*/
/* Select date_created and the date_created of the previous request using lead() or lag() as appropriate.
Compute the gap between each request and the previous request.
Select the row with the maximum gap.*/

-- Compute the gaps
WITH request_gaps AS (
        SELECT date_created,
               -- lead or lag
               lag(date_created) OVER (ORDER BY date_created) AS previous,
               -- compute gap as date_created minus lead or lag
               date_created - lag(date_created) OVER (ORDER BY date_created) AS gap
          FROM evanston311)
-- Select the row with the maximum gap
SELECT *
  FROM request_gaps
-- Subquery to select maximum gap from request_gaps
 WHERE gap = (SELECT max(gap)
                FROM request_gaps);
-- Select the name of the day of the week the request was created (date_created) as day.
-- Select the mean time between the request completion (date_completed) and request creation as duration.
-- Group by day (the name of the day of the week) and the integer value for the day of the week (use a function).
-- Order by the integer value of the day of the week using the same function used in GROUP BY.
-- Select name of the day of the week the request was created 
SELECT to_char(date_created, 'day') AS day, 
       -- Select avg time between request creation and completion
       AVG(date_completed - date_created) AS duration
  FROM evanston311 
 -- Group by the name of the day of the week and 
 -- integer value of day of week the request was created
 GROUP BY day, EXTRACT(DOW FROM date_created)
 -- Order by integer value of the day of the week 
 -- the request was created
 ORDER BY EXTRACT(DOW FROM date_created);
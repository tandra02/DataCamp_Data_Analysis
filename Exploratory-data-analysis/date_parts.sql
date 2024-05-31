-- How many requests are created in each of the 12 months during 2016-2017?
-- Extract the month from date_created and count requests
SELECT date_part('month', date_created) AS month, 
       COUNT(*)
  FROM evanston311
 -- Limit the date range
 WHERE date_created >= '2016-01-01'
   AND date_created < '2018-01-01'
 -- Group by what to get monthly counts?
 GROUP BY date_part('month', date_created);


-- What is the most common hour of the day for requests to be created?
-- Get the hour and count requests
SELECT date_part('hour', date_created) AS hour,
       count(*)
  FROM evanston311
 GROUP BY hour
 -- Order results to select most common
 ORDER BY count DESC
 LIMIT 1;


-- During what hours are requests usually completed? Count the requests completed by hour. Order the result by hour.
-- Count requests completed by hour
SELECT date_part('hour', date_completed) AS hour,
       COUNT(*)
  FROM evanston311
 GROUP BY hour
 ORDER BY count;
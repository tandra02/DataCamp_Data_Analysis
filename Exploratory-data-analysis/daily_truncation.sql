-- Write a subquery to count the number of requests created per day.
-- Select the month and average count per month from the daily_count subquery.
-- Aggregate daily counts by month
SELECT date_trunc('month', day) AS month,
       AVG(count)
  -- Subquery to compute daily counts
  FROM (SELECT date_trunc('day', date_created) AS day,
               COUNT(*) AS count
          FROM evanston311
         GROUP BY day) AS daily_count
 GROUP BY month
 ORDER BY month;
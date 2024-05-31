-- Are there any days in the Evanston 311 data where no requests were created?
-- Write a subquery using generate_series() to get all dates between the min() and max()
-- date_created in evanston311.
-- Write another subquery to select all values of date_created as dates from evanston311.
-- Both subqueries should produce values of type date (look for the ::).
-- Select dates (day) from the first subquery that are NOT IN the results of the second 
-- subquery. This gives you days that are not in date_created.

SELECT day
-- 1) Subquery to generate all dates
-- from min to max date_created
  FROM (SELECT generate_series(min(date_created),
                               max(date_created),
                               '1 day')::date AS day
          -- What table is date_created in?
          FROM evanston311) AS all_dates
-- 4) Select dates (day from above) that are NOT IN the subquery
 WHERE day NOT IN 
       -- 2) Subquery to select all date_created values as dates
       (SELECT date_created::date
          FROM evanston311);
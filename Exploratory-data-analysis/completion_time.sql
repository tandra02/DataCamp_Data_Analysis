-- Compute the average difference between the completion timestamp and the creation timestamp by category.
-- Order the results with the largest average time to complete the request first.
SELECT category, 
       AVG(date_completed - date_created) AS completion_time
  FROM evanston311
 GROUP BY category
-- Order the results
 ORDER BY completion_time DESC;
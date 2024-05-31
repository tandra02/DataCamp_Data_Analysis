-- Count the number of Evanston 311 requests created on January 31, 2017 by casting date_created to a date.

SELECT count(*) 
  FROM evanston311
 WHERE date_created::date = 'January 31, 2017';


--  Count the number of Evanston 311 requests created on February 29, 2016 by using >= and < operators.

SELECT count(*)
  FROM evanston311 
 WHERE date_created >= '2016-02-29' 
   AND date_created < '2016-03-01';


-- Count requests created on March 13, 2017. Specify the upper bound by adding 1 to the lower bound.

SELECT count(*)
  FROM evanston311
 WHERE date_created >= '2017-03-13'
   AND date_created < '2017-03-13'::date + 1;
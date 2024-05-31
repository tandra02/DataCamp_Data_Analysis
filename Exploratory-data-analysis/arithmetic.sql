-- Subtract the min date_created from the max
SELECT max(date_created) - min(date_created)
  FROM evanston311;

-- Using now(), find out how old the most recent evanston311 request was created.
SELECT now() - max(date_created)
FROM evanston311;

-- Add 100 days to the current timestamp.
SELECT now() + '100 days'::interval;

--SELECT the current timestamp and current timestamp + 5 minutes
SELECT now(), now() + '5 minutes' :: interval;
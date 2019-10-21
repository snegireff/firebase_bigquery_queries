# firebase_bigquery_queries
Example of queries for app+web and firebase bigQuery export


Purchasers

SELECT
  COUNT(DISTINCT user_id) AS purchasers_count
FROM
  -- PLEASE REPLACE WITH YOUR TABLE NAME.
  `firebase-public-project.analytics_153293282.events_*`
WHERE
  event_name IN ('in_app_purchase', 'ecommerce_purchase')
  -- PLEASE REPLACE WITH YOUR DESIRED DATE RANGE
  AND _TABLE_SUFFIX BETWEEN '20180501' AND '20240131';

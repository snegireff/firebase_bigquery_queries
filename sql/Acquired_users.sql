SELECT
COUNT(DISTINCT user_pseudo_id) AS acquired_users_count
FROM
-- PLEASE REPLACE WITH YOUR TABLE NAME.
 `firebase-public-project.analytics_153293282.events_*`
WHERE
traffic_source.source = 'google'
AND traffic_source.medium = 'cpc'
-- AND traffic_source.name = 'VTA-Test-Android'
-- PLEASE REPLACE YOUR DESIRED DATE RANGE.
AND _TABLE_SUFFIX BETWEEN '20180521' AND '20240131'

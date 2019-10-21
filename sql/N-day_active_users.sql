SELECT
  COUNT(DISTINCT user_pseudo_id) AS n_day_active_users_count
FROM
  -- PLEASE REPLACE WITH YOUR TABLE NAME.
  `firebase-public-project.analytics_153293282.events_*`
WHERE
  event_name = 'user_engagement'
  -- Pick events in the last N = 20 days.
  AND event_timestamp > UNIX_MICROS(TIMESTAMP_SUB(CURRENT_TIMESTAMP, INTERVAL 20 DAY))
  AND _TABLE_SUFFIX BETWEEN '20170521'
  AND '20240131';

SELECT
  COUNT(DISTINCT user_pseudo_id) AS users_acquired_through_google_count
FROM
  -- PLEASE REPLACE WITH YOUR TABLE NAME.
  `firebase-public-project.analytics_153293282.events_*`
WHERE
  event_name = 'screen_view'
  -- Cohort: opened app 1-2 weeks ago. One week of cohort, aka. weekly.
  AND event_timestamp >
      UNIX_MICROS(TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 14 DAY))
  AND event_timestamp <
      UNIX_MICROS(TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 7 DAY))
  -- Cohort filter: users acquired through 'google' source.
  AND traffic_source.source = 'google'
  -- PLEASE REPLACE YOUR DESIRED DATE RANGE.
  AND _TABLE_SUFFIX BETWEEN '20180613' AND '20180924'

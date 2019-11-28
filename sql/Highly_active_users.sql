  SELECT
    user_pseudo_id,
    event_params.key,
    SUM(event_params.value.int_value)
  FROM
    -- PLEASE REPLACE WITH YOUR TABLE NAME.
    `firebase-public-project.analytics_153293282.events_*` AS T
  CROSS JOIN
    T.event_params
  WHERE
    event_name = 'user_engagement'
    -- User engagement in the last M = 10 days.
    AND event_timestamp >
        UNIX_MICROS(TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 10 DAY))
    AND event_params.key = 'engagement_time_msec'
    -- PLEASE REPLACE YOUR DESIRED DATE RANGE.
    AND _TABLE_SUFFIX BETWEEN '20180521' AND '20240131'
  GROUP BY 1, 2
  HAVING
    -- Having engaged for more than N = 0.1 minutes.
    SUM(event_params.value.int_value) > 0.1 * 60 * 1000
);

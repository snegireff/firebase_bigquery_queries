


SELECT
  COUNT(DISTINCT MDaysUsers.user_id) AS n_day_inactive_users_count
FROM
  (
    SELECT
      user_id
    FROM
      /* PLEASE REPLACE WITH YOUR TABLE NAME */
       `firebase-public-project.analytics_153293282.events_*`
    WHERE
      event_name = 'user_engagement'
      /* Has engaged in last M = 7 days */
      AND event_timestamp >
          UNIX_MICROS(TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 7 DAY))
      /* PLEASE REPLACE WITH YOUR DESIRED DATE RANGE */
      AND _TABLE_SUFFIX BETWEEN '20180521' AND '20240131'
  ) AS MDaysUsers
-- EXCEPT ALL is not yet implemented in BigQuery. Use LEFT JOIN in the interim.
LEFT JOIN
  (
    SELECT
      user_id
    FROM
      /* PLEASE REPLACE WITH YOUR TABLE NAME */
       `firebase-public-project.analytics_153293282.events_*`
    WHERE
      event_name = 'user_engagement'
      /* Has engaged in last N = 2 days */
      AND event_timestamp >
          UNIX_MICROS(TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 2 DAY))
      /* PLEASE REPLACE WITH YOUR DESIRED DATE RANGE */
      AND _TABLE_SUFFIX BETWEEN '20180521' AND '20240131'
  ) AS NDaysUsers
  ON MDaysUsers.user_id = NDaysUsers.user_id
WHERE
  NDaysUsers.user_id IS NULL;

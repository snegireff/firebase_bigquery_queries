SELECT
 COUNT(DISTINCT user_id) AS frequent_active_users_count
FROM
 (
   SELECT
     user_id,
     COUNT(DISTINCT event_date)
   FROM
     -- PLEASE REPLACE WITH YOUR TABLE NAME.
      `firebase-public-project.analytics_153293282.events_*`
   WHERE
     event_name = 'user_engagement'
     -- User engagement in the last M = 10 days.
     AND event_timestamp >
         UNIX_MICROS(TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 10 DAY))
     -- PLEASE REPLACE YOUR DESIRED DATE RANGE.  For optimal performance
     -- the _TABLE_SUFFIX range should match the INTERVAL value above.
     AND _TABLE_SUFFIX BETWEEN '20180521' AND '20240131'
   GROUP BY 1
   -- Having engaged in at least N = 4 days.
   HAVING COUNT(event_date) >= 4
 );

SELECT event_name, param
FROM  `firebase-public-project.analytics_153293282.events_*`,
UNNEST(event_params) AS param
WHERE event_name = "level_complete_quickplay"
AND param.key = "value" 

# firebase_bigquery_queries
Example of queries for app+web and firebase bigQuery export


## Purchasers [sql/Purchasers.sql](sql/Purchasers.sql "Purchasers")

Description:

Computes the audience of purchasers.
Purchasers = users (by user_pseudo_id) who have logged either in_app_purchase or ecommerce_purchase.

Results:

<img width="158" alt="Purchasers" src="https://user-images.githubusercontent.com/16681043/67213115-2187e700-f426-11e9-8852-6a07d26a0d92.png">

Author:

(https://support.google.com/firebase/answer/9037342?hl=en&ref_topic=7029512)




## N-day active users [sql/N-day_active_users.sql](sql/N-day_active_users.sql "N-day active users")

Description:

Builds an audience of N-Day Active Users.
N-day active users = users who have logged at least one user_engagement event in the last N days.

Author:

(https://support.google.com/firebase/answer/9037342?hl=en&ref_topic=7029512)




## N-day inactive users [sql\N-day_inactive_users.sql](sql/N-day_inactive_users.sql "N-day inactive users")


Description:

Builds an audience of N-Day Inactive Users.
N-Day inactive users = users in the last M days who have not logged a
user_engagement event in the last N days where M > N.

Results:

<img src=https://user-images.githubusercontent.com/56918494/67683408-07a45200-f99a-11e9-91bb-6f34cd5965e7.jpg>


Author:

(https://support.google.com/firebase/answer/9037342?hl=en&ref_topic=7029512)




## Frequently active users [sql\Frequently_active_users](sql/Frequently_active_users.sql "Frequently active users")

Description:

Builds an audience of Frequently Active Users.
 Frequently Active Users = users who have logged at least once
 'user_engagement' event on N of the last M days where M > N.

Results:

<img  src="https://user-images.githubusercontent.com/56918494/67683655-636edb00-f99a-11e9-8087-d5a6597c7a13.jpg">


 Author:

 (https://support.google.com/firebase/answer/9037342?hl=en&ref_topic=7029512)




## Highly active users [sql\Highly_active_users](sql/Highly_active_users.sql "Highly active users")

Description:

Builds an audience of Highly Active Users.
Highly Active Users = users who have been active for more than N minutes in the last M days where M > N.

Results:

<img  src="https://user-images.githubusercontent.com/56918494/67485113-17f2bf00-f672-11e9-90a5-3c5eea67de7d.jpg">


Author:

(https://support.google.com/firebase/answer/9037342?hl=en&ref_topic=7029512)




## Acquired users [sql\Acquired_users](sql/Acquired_users.sql "Acquired users")

Description:

Builds an audience of Acquired Users.
Acquired Users = users who were acquired via some Source/Medium/Campaign.

Results:

<img  src="https://user-images.githubusercontent.com/56918494/67491241-44600880-f67d-11e9-9cde-e066cd9bf2fb.jpg">


Author:

(https://support.google.com/firebase/answer/9037342?hl=en&ref_topic=7029512)




## Cohorts with filters [sql\Cohorts_with_filters](sql/Cohorts_with_filters.sql "Cohorts with filters")

Description:

Builds an audience composed of users acquired last week through Google campaigns, i.e., cohorts with filters.
Cohort is defined as users acquired last week, i.e. between 7 - 14 days ago. The cohort filter is for users acquired through a direct
campaign.

Results:

<img  src="https://user-images.githubusercontent.com/56918494/67495491-a7ed3480-f683-11e9-939f-20184ddf93bb.jpg">


Author:

(https://support.google.com/firebase/answer/9037342?hl=en&ref_topic=7029512)




## How to use the UNNEST function to analyze event parameters [sql\UNNEST_function_event_parameters](sql/UNNEST_function_event_parameters.sql "How to use the UNNEST function to analyze event parameters")

Description:

How to use the UNNEST function in BigQuery to analyze event parameters.

Results:

<img  src="https://user-images.githubusercontent.com/56918494/67698542-35e25b80-f9b3-11e9-81db-5fc382aef952.jpg">


Author:

(https://medium.com/firebase-developers/using-the-unnest-function-in-bigquery-to-analyze-event-parameters-in-analytics-fb828f890b42)





https://www.owox.com/blog/use-cases/google-bigquery-standard-sql/
https://www.youtube.com/channel/UCD-xCWekkWAZPE2csN8f2Tg/playlists
https://burgerdata.com/blog/priemy-raboty-v-bigquery/

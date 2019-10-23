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

## N-day inactive users [sql\N-day_inactive_users.sql](https://user-images.githubusercontent.com/56918494/67395542-df3de180-f5ae-11e9-98b2-9c7398749326.jpg)


Description:

Builds an audience of N-Day Inactive Users.
N-Day inactive users = users in the last M days who have not logged a
user_engagement event in the last N days where M > N.

Author:

(https://support.google.com/firebase/answer/9037342?hl=en&ref_topic=7029512)

## Frequently active users [sql\Frequently_active_users](https://user-images.githubusercontent.com/56918494/67396939-2200b900-f5b1-11e9-966c-2cc3d72c32b7.jpg)

Description:
Builds an audience of Frequently Active Users.
 Frequently Active Users = users who have logged at least once
 'user_engagement' event on N of the last M days where M > N.

 Author:

 (https://support.google.com/firebase/answer/9037342?hl=en&ref_topic=7029512)

 

https://www.owox.com/blog/use-cases/google-bigquery-standard-sql/
https://www.youtube.com/channel/UCD-xCWekkWAZPE2csN8f2Tg/playlists
https://burgerdata.com/blog/priemy-raboty-v-bigquery/

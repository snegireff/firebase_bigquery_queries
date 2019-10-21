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



## N-day active users [sql/N-day active users.sql](sql/N-day active users.sql "N-day active users")

Description:

Builds an audience of N-Day Active Users.

N-day active users = users who have logged at least one user_engagement event in the last N days.

Author:

(https://support.google.com/firebase/answer/9037342?hl=en&ref_topic=7029512)

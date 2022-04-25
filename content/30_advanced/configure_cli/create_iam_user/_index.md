---
title: "Create a new IAM User"
chapter: false
weight: 210
pre: "<b>2.1 </b>"
---

To begin, you'll need to create a new Identity and Access Management (IAM) user in your AWS account. Follow
the [instructions](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html#id_users_create_console) to
create a new user with the values in the table below. This user will have *programmatic access* only, and will not be
able to login to the console.<p>&nbsp;<p>
<b>Important: be sure to click the "Download .csv" button to download the Access key and Secret access key.</b> 

<p>&nbsp;<p>

Parameter | Value
--- | ---
User name | admin
AWS access type | Access key - Programmatic access
Set permissions | Attach existing policies directly
Policy name | PowerUserAccess
Tags | None

<p>&nbsp;<p>


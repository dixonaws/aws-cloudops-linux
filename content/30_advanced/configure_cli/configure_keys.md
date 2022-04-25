---
title: "Configure Keys"
chapter: false
weight: 211
pre: "<b>2.2 </b>"
---

Now that you have created an instance, a new IAM user, and obtained the keys, logon to your instance to configure the
CLI. type ```aws configure``` at the command prompt. When prompted, input the Access key ID and Secret access key for
your new user (these values will be in the credentials.csv file that you downloaded. Set the default region to be *
us-east-1.*
<p>&nbsp;</p>
The <i>configure</i> command makes a new entry in the ~/.aws/credentials file on your instance. View the contents of this file. If you're able to do this exercise during the live lecture, type the command into the chat window!

{{% notice info%}}
Protect the Access key ID and Secret access key data! Treat them like a password - never share them with others, show them in a presentation, enter them in any programs/code, commit them to Github, etc. 
{{% /notice%}}



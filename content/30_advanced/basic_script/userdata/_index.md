---
title: "EC2 userdata service"
chapter: false
weight: 250
pre: "<b>4.3 </b>"
---

Similar to instance metadata, [userdata](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html) is a
facility that exists on every EC2 instance. You can use instance userdata to run a script when an instance is launched.
In this example, we'll launch a new instance and configure it to run a script -- the one that we created in the last
section. So, when the instance launches, it should upload a file to our S3 bucket with its instance ID.




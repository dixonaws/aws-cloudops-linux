---
title: "Attach IAM role"
chapter: false
weight: 232
pre: "<b>3.2 </b>"
---

Now that you have created the _EC2PowerUserRole_ role, you can attach it to your EC2 instance. Use these [instructions](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/iam-roles-for-amazon-ec2.html#attach-iam-role).<br> 

Delete the ~/.aws/credentials file from the EC2 instance<br>

Test that the AWS CLI still works -- it should now be using credentials from the EC2PowerUserRole. Type ```aws s3 ls``` to list your S3 buckets (you should now have at least one), or ```aws ec2 describe-instances``` to get a listing if your instances (you should have at least one!).

---
title: "Launch a new instance"
chapter: false
weight: 251
pre: "<b>4.4 </b>"
---

Launch a new instance using the CLI and userdata given the script you wrote in the last exercise.

```bash
aws ec2 run-instances --image-id "ami-0f9fc25dd2506cf6d" --instance-type "t2.micro" --user-data fileb://get-instance-info.sh --iam-instance-profile='{"Name": "EC2PowerUserRole"}' --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=adv_linux_ex_4.4}]' --key-name "dixonaws"  --region us-east-1
```

Important! You will need to consider a few things before running this script:

1. Run this script on your EC2 instance! Not your laptop
2. You will need an existing key pair -- replace the value of ```--key-name "dixonaws"``` with the one that you have in
   your account
3. Your script must be named get-instance-info.sh

The result should be two things: a new EC2 instance tagged as "adv_linux_ex_4.4" and a new file s written to your S3
bucket with some identifying metadata about the instance.

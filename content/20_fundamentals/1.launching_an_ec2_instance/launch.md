---
title: "Launch the Instance"
chapter: false
weight: 23
pre: 
---

In this tutorial, you'll launch an EC2 (Elastic Compute Cloud) instance into a region of AWS.

<img src='/images/launch_an_instance.png' width='400px'>

Follow Step 1: Launch an instance using [these instructions](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EC2_GetStarted.html). 
Use the following parameters:

Parameter | Value
--- | ---
Region | _us-east-1_
Amazon Machine Image | _Amazon Linux 2023 AMI, SSD Volume Type, 64-bit (x86)_
Instance type | _t2.micro (free tier eligible)_
Instance Details | (accept all defaults)
Storage | (accept default 8GB SSD volume)
Tags | _Key=Name, Value=your last name_
Security Group | _SSH, Source=My IP_ 
Key Pair | Create a new key pair and name it: your_last_name-us-east-1.pem (download to desktop)

At this point, you are well on your way to becoming an AWS Cloud Operations Administrator! Once you have launched the instance and it's Status Check shows _2 of 2 checks passed_, post your status to [this form](https://docs.google.com/spreadsheets/d/1hbInQSPG9gQN7vHxFJQmWkJl-zdCPRhH1IR41mdyqgI/edit#gid=0). 
Continue to the next step.

{{% notice note%}}
Please update the [class roster](https://docs.google.com/spreadsheets/d/1hbInQSPG9gQN7vHxFJQmWkJl-zdCPRhH1IR41mdyqgI/edit#gid=0) when you finish with Exercise 1.
{{% /notice%}}









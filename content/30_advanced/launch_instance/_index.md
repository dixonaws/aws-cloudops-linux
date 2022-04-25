---
title: "Launch an Instance"
chapter: false
weight: 201
pre: "<b>1. </b>"
---

To begin, launch a new instance in us-east-1 using the parameters below. As a refresher, you can use [these instructions](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EC2_GetStarted.html).
<p>&nbsp;<p>
Parameters:

Parameter | Value
--- | ---
Region | _us-east-1_
Amazon Machine Image | _Amazon Linux 2 AMI, SSD Volume Type, 64-bit (x86)_
Instance type | _t2.micro (free tier eligible)_
Instance Details | (accept all defaults)
Storage | (accept default 8GB SSD volume)
Tags | _Key=Name, Value=your last name_
Security Group | _SSH, Source=My IP_
Key Pair | Create a new key pair and name it: your_last_name-us-east-1.pem (download to desktop)
<p>&nbsp;<p>
Login to the instance and continue to the next step.

{{% notice note%}}
Please update the [class roster](https://docs.google.com/spreadsheets/d/1xxHMJ_m2R-VvTCkJWQvTv6I2geRETGq9m9ezoIEyBxw/edit?usp=sharing) when you finish with Exercise 1.
{{% /notice%}}

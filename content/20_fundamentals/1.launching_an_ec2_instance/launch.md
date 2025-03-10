---
title: "Launch the Instance"
chapter: false
weight: 23
pre: 
---

In this tutorial, you'll launch an EC2 (Elastic Compute Cloud) instance into a region of AWS.

<img src='/images/launch_an_instance.png' width='400px'>

Follow Step 1: Launch an instance using [these instructions](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EC2_GetStarted.html#ec2-launch-instance). 
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

At this point, you are well on your way to becoming an AWS Cloud Operations Administrator! Once you have launched the instance and it's Status Check shows _2 of 2 checks passed_, post your status to [this form](https://docs.google.com/spreadsheets/d/1uWdf_sUDkg-DqW6ELK3SKRx8DTlP_EP05di6hkLjIgA/edit?usp=sharing#gid=0&range=A1). 
Continue to the next step.

{{% notice note%}}
Please update the [class roster](https://docs.google.com/spreadsheets/d/1HNw-LBWG5JHo83Pb-1Qlqpgxh3a-92C6Pwye3qxdj0Q/edit?gid=328056100#gid=328056100) when you finish with Exercise 1.
{{% /notice%}}

{{% notice note%}}
See details on Amazon EC2 free tier [here](https://aws.amazon.com/free/?all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc&awsf.Free%20Tier%20Types=*all&awsf.Free%20Tier%20Categories=categories%23compute)
{{% /notice%}}







---
title: "Create an Amazon EBS volume"
chapter: true
weight: 20
pre: 
---

# Create an Amazon EBS volume

In this tutorial, you’ll create an Amazon Elastic Block Store (Amazon EBS) volume.

<img src='/images/ebs_backed_instance.png' width='400px'>

Follow "Create an empty volume" using [these instructions](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-creating-volume.html). 
Use the following parameters:

Parameter | Value
--- | ---
Region | _us-east-1_
Volume Type | _General Purpose SSD (gp2)_
Size (GiB) | _10_
Availability Zone | _(same as the EC2 instance)_
Snapshot ID | _(default empty value)_
Encryption | _(default encryption not marked)_
Tags | _Key=Name, Value=your last name_ 








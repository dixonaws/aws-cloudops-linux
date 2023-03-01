---
title: "Create an Amazon EBS volume"
draft: false
weight: 62
pre: 
---

In this tutorial, you’ll create an Amazon Elastic Block Store (Amazon EBS) volume.

<img src='/images/ebs_backed_instance.png' width='400px'>

Follow "Create an empty volume" using [these instructions](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-creating-volume.html). 
Use the following parameters:

{{%notice note%}}
You can find the availability zone for your instance on the EC2 details page under the _Networking_ tab.
{{% /notice%}}


Parameter | Value
--- | ---
Region | _us-east-1_
Volume Type | _General Purpose SSD (gp2)_
Size (GiB) | _10_
Availability Zone | _(same as the EC2 instance)_
Snapshot ID | _(default empty value)_
Encryption | _(default encryption not marked)_
Tags | _Key=Name, Value=your last name_ 








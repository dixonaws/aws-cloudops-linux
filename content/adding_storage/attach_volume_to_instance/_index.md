---
title: "Attach volume to the instance"
chapter: true
weight: 30
pre: 
---

# Attach volume to the instance

In this tutorial, you’ll attach the Amazon Elastic Block Store (Amazon EBS) volume created in the previous step to your existent EC2 instance.

Follow  [these instructions](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-attaching-volume.html). 
Use the following parameters:

Parameter | Value
--- | ---
Region | _us-east-1_
Volume | _(volume from previous step)_
Instance | _(existing EC2 instance)_
Device | (leave default)



---
title: "Configure the Network"
chapter: false
weight: 30
---

We'll have to open port 80 on the web server so that you can access it from the internet. 
We do this by configuring a _security group_ rule on the AWS console.

You can test that your web server is properly installed and started. To do this, enter 
the public Domain Name System (DNS) name of your EC2 instance in the address bar of 
a web browser, for example: http://ec2-42-8-168-21.us-west-1.compute.amazonaws.com. If your 
web server is running, then you see the Apache test page.

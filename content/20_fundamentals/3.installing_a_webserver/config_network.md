---
title: "Configure the Network"
chapter: false
weight: 42
---

We'll have to open port 80 on the web server so that you can access it from the internet. 
We do this by configuring a _security group_ rule on the AWS console.

1. Click on your instance in the EC2 console. Then, select the _Security_ tab in the window below.
2. Click to open the Security Group. It should be named something like _sg-0fed659811d69a592 (launch-wizard-81)_.
3. In the Security Group console, click _Edit Inbound Rules_
4. Click _Add Rule_
5. Add a rule for _Port Range_ = 80 and _Source_ = My IP
6. Click _Save Rules_

You can now test that your web server is properly installed and 
started. To do this, enter 
the public Domain Name System (DNS) name of your EC2 instance in the 
address bar of 
a web browser, for example: _http://ec2-12-3-456-78.us-east-1.compute.amazonaws.com_. If 
your web server is running, then you will see the content that you posted in
step 2 - Add Content.

<img src="/images/test_page_from_internet.png" height=300 style="border: 1px solid #000000">
<br>
{{% notice note%}}
Please update the [class roster](https://docs.google.com/spreadsheets/d/1xxHMJ_m2R-VvTCkJWQvTv6I2geRETGq9m9ezoIEyBxw/edit?usp=sharing) when you finish with Exercise 3.
{{% /notice%}}



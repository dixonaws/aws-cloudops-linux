---
title: "Configure the Network"
chapter: false
weight: 44
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
Please update the [class roster](https://docs.google.com/spreadsheets/d/1HNw-LBWG5JHo83Pb-1Qlqpgxh3a-92C6Pwye3qxdj0Q/edit?gid=328056100#gid=328056100) when you finish with Exercise 3.
{{% /notice%}}

{{% notice note%}}
Throughout this workshop, your home computer's IP address may change in case it is dynamically assigned by your Internet Service Provider.  In this case, you will also need to edit each inbound rule in the security group created in this workshop with the latest _Source_ = My IP.  For this, simply edit the inbound rule and pick _Source_ = My IP from the drop down which will update it to your current IP address.  Then Click _Save Rules_
{{% /notice%}}



---
title: "Logging In"
chapter: true
weight: 30
pre: "<b>2. </b>"
---
### Exercise 2

# Logging in

Now that you've deployed your EC2 instance, you can log in to it like any other Linux host. 
The procedure varies based on the client OS you are using (Windows or macOS/Linux). Establish a connection and have
a look around in your new instance.

{{%notice note%}}
If you stopped your EC2 instance previously, please make sure to start it first.  If your instance is not started, you won't be able to log in to your instance.
To start a stopped instance, select the instance by clicking on the checkbox next to instance name, and choose Instance state drop down, Start instance.
It can take a few minutes for the instance to enter the running state.  You can also see the instructions on how to start a stopped instance [here](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#starting-stopping-instances)
{{% /notice%}}

{{% notice note%}}
Throughout this workshop, your home computer's IP address may change in case it is dynamically assigned by your Internet Service Provider.  In this case, you will also need to edit each inbound rule in the security group created in this workshop with the latest _Source_ = My IP.  For this, simply edit the inbound rule and pick _Source_ = My IP from the drop down which will update it to your current IP address.  Then Click _Save Rules_
{{% /notice%}}


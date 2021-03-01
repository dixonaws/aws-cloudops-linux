---
title: "Automation"
draft: false
chapter: no
weight: 10
---

All of the tasks we completed to launch an EC2 instance and install Apache httpd can be automated 
with a tool called [Cloudformation](https://aws.amazon.com/cloudformation/). What would we have to do?

1. Launch an EC2 instance
2. Install the Apache web server (use [userdata](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html))
3. Add some content
4. Configure the security group
5. Add and configure storage
6. Move the web content
7. Configure Apache httpd to point to the new web location

Download and launch [this template](https://github.com/dixonaws/aws-cloudops-linux/blob/main/static/files/linuxwebserver.yaml) in the AWS Cloudformation Console to peform all of the steps in exercises 1-5. 
Simply delete the stack to perform exercise 6 (Cleaning Up). Note that you must have an existing private key in EC2 before
you launch this template.

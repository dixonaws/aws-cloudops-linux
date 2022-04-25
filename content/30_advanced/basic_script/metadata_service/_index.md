---
title: "EC2 metadata service"
chapter: false
weight: 242
pre: "<b>4.2 </b>"
---

During the last exercise, you made use of
the [EC2 Metadata service](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html), which exists
on every instance at http://169.254.169.254, a non-routable IP address. Instance metadata is useful if you want to
develop automation that configures an instance dynamically when it launches. For example, you may want to add a Linux
server to a cluster of some kind whenever it launches. You can use the instance metadata to retrieve the IP address of
the system and add it to a cluster at boot time. 
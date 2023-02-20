---
title: "Clean up your volume"
draft: false
chapter: no
weight: 101
---

We'll start by detaching the EBS volume from the EC2 instance. 

First, stop the web server with the following command:
```commandline
sudo systemctl stop httpd
```

Then, unmount the volume from your EC2 instance:

```commandline
sudo umount -d /dev/xvdf
```

Then, detach the volume from the instance as explained in _"Step 2: Detach the volume from the instance"_ of these [these instructions](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-detaching-volume.html).

Once the volume is detached from the EC2 Instance, follow [these instructions](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-volume.html) to delete the volume. 

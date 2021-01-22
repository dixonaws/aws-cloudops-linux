---
title: "Moving the web volume"
chapter: false
weight: 15
---

The EBS volume is attached to the EC2 instance. However, you need to make the volume available to use by formatting and mounting it.

Connect to the EC2 instance that you created earlier as you did in the _Logging in_ section.

First, check the available disk devices:

```commandline
lsblk
```

It will return something similar to:

```
NAME    MAJ:MIN RM SIZE RO TYPE MOUNTPOINT
xvda    202:0    0   8G  0 disk 
└─xvda1 202:1    0   8G  0 part /
xvdf    202:80   0  10G  0 disk 
```

The root device is _/dev/xvda/_ while the attached volume is _/dev/xvdf/_. 

The attached volume is empty and you must create a file system on it before you can mount and use it:

```commandline
sudo mkfs -t xfs /dev/xvdf
```

Next step is to create a mount point directory for the volume. This mount point is where we will read and write files to the volume. 

```commandline
sudo mkdir /data
```

Finally, we mount the volume at the directory:
```commandline
sudo mount /dev/xvdf /data
```
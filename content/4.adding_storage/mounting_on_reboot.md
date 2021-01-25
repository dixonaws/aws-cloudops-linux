---
title: "Mounting on reboot"
chapter: false
weight: 50
---

The mount point we did in the previous section is not preserved after rebooting the EC2 instance. In order to do so, we need to add an entry for the device to the _/etc/fstab_ file. This file contains all the disks and partitions, and describes how they should be initialized into the filesystem. 

First, we'll create a backup of the _/etc/fstab_ file:

```commandline
sudo cp /etc/fstab /etc/fstab.orig
```

Next, find the devices' 128-bit universally unique identifier (UUID). This UUID, unlike the devices' names, is unique and does not change:
```commandline
sudo blkid
```

This command will return the UUID of your devices. Save the UUID of _/dev/xvdf_. We will use it later:

```commandline
/dev/xvda1: LABEL="/" UUID="ca774df7-756d-4261-a3f1-76038323e572" TYPE="xfs" PARTLABEL="Linux" PARTUUID="02dcd367-e87c-4f2e-9a72-a3cf8f299c10"
/dev/xvdf: UUID="aebf131c-6957-451e-8d34-ec978d9581ae" TYPE="xfs"
```

Now that we know the UUID, let's add it to the _/etc/fstab_ file. Open the file:

```commandline
sudo nano /etc/fstab
```

The file will look like:

```code
#
UUID=90e29211-2de8-4967-b0fb-16f51a6e464c     /xfs    defaults,noatime  1   1
```

Add the following line to the file, using the UUID you saved previously:

```code
UUID=aebf131c-6957-451e-8d34-ec978d9581ae  /data  xfs  defaults,nofail  0  2
```

Save the file.

Now, the _/etc/fstab/_ has two entries. Check that the entry has been added correctly. We'll unmount the device and then mount all file systems in _/etc/fstab_.

```commandline
sudo umount /data
sudo mount -a
```

If there are no errors, the configuration is properly done!
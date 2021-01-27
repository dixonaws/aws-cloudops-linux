---
title: "Formatting and mounting"
chapter: false
weight: 40
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

The root device is _/dev/xvda/_. The EBS volume that we just created and attached 
 _/dev/xvdf/_. 

The attached volume is empty and you must create a file system on it before you can mount and use it:

```commandline
sudo mkfs -t xfs /dev/xvdf
```

The  next step is to create a mount point directory for the volume. This mount 
point is where we will read and write files to the volume:

```commandline
sudo mkdir /data
```

Finally, we mount the volume at the directory:
```commandline
sudo mount /dev/xvdf /data
```

To verify that the volume is mounted, you can use the _mount_ command
without any arguments. The last line in this sample output shows that the device
named _xvdf_ is mounted on the _data_ directory. 

```commandline
[ec2-user@ip-123-45-67-89 ~]$ mount
sysfs on /sys type sysfs (rw,nosuid,nodev,noexec,relatime)
proc on /proc type proc (rw,nosuid,nodev,noexec,relatime)
devtmpfs on /dev type devtmpfs (rw,nosuid,size=492684k,nr_inodes=123171,mode=755)
securityfs on /sys/kernel/security type securityfs (rw,nosuid,nodev,noexec,relatime)
tmpfs on /dev/shm type tmpfs (rw,nosuid,nodev)
devpts on /dev/pts type devpts (rw,nosuid,noexec,relatime,gid=5,mode=620,ptmxmode=000)
tmpfs on /run type tmpfs (rw,nosuid,nodev,mode=755)
tmpfs on /sys/fs/cgroup type tmpfs (ro,nosuid,nodev,noexec,mode=755)
cgroup on /sys/fs/cgroup/systemd type cgroup (rw,nosuid,nodev,noexec,relatime,xattr,release_agent=/usr/lib/systemd/systemd-cgroups-agent,name=systemd)
pstore on /sys/fs/pstore type pstore (rw,nosuid,nodev,noexec,relatime)
cgroup on /sys/fs/cgroup/net_cls,net_prio type cgroup (rw,nosuid,nodev,noexec,relatime,net_cls,net_prio)
cgroup on /sys/fs/cgroup/cpu,cpuacct type cgroup (rw,nosuid,nodev,noexec,relatime,cpu,cpuacct)
cgroup on /sys/fs/cgroup/pids type cgroup (rw,nosuid,nodev,noexec,relatime,pids)
cgroup on /sys/fs/cgroup/memory type cgroup (rw,nosuid,nodev,noexec,relatime,memory)
cgroup on /sys/fs/cgroup/cpuset type cgroup (rw,nosuid,nodev,noexec,relatime,cpuset)
cgroup on /sys/fs/cgroup/freezer type cgroup (rw,nosuid,nodev,noexec,relatime,freezer)
cgroup on /sys/fs/cgroup/hugetlb type cgroup (rw,nosuid,nodev,noexec,relatime,hugetlb)
cgroup on /sys/fs/cgroup/blkio type cgroup (rw,nosuid,nodev,noexec,relatime,blkio)
cgroup on /sys/fs/cgroup/perf_event type cgroup (rw,nosuid,nodev,noexec,relatime,perf_event)
cgroup on /sys/fs/cgroup/devices type cgroup (rw,nosuid,nodev,noexec,relatime,devices)
/dev/xvda1 on / type xfs (rw,noatime,attr2,inode64,noquota)
debugfs on /sys/kernel/debug type debugfs (rw,relatime)
systemd-1 on /proc/sys/fs/binfmt_misc type autofs (rw,relatime,fd=31,pgrp=1,timeout=0,minproto=5,maxproto=5,direct,pipe_ino=12416)
mqueue on /dev/mqueue type mqueue (rw,relatime)
hugetlbfs on /dev/hugepages type hugetlbfs (rw,relatime,pagesize=2M)
sunrpc on /var/lib/nfs/rpc_pipefs type rpc_pipefs (rw,relatime)
tmpfs on /run/user/1000 type tmpfs (rw,nosuid,nodev,relatime,size=100692k,mode=700,uid=1000,gid=1000)
/dev/xvdf on /data type xfs (rw,relatime,attr2,inode64,noquota)
[ec2-user@ip-172-31-60-29 ~]$ 
```

You could also use the _df_ command to list the currently mounted filesystems (df is the _disk free_ command, and the -h option is for _human readable_):

```commandline
[ec2-user@ip-172-31-60-29 ~]$ df -h
Filesystem      Size  Used Avail Use% Mounted on
devtmpfs        482M     0  482M   0% /dev
tmpfs           492M     0  492M   0% /dev/shm
tmpfs           492M  420K  492M   1% /run
tmpfs           492M     0  492M   0% /sys/fs/cgroup
/dev/xvda1      8.0G  1.5G  6.6G  18% /
tmpfs            99M     0   99M   0% /run/user/1000
/dev/xvdf        10G   43M   10G   1% /data
```

At this point, we have created a new EBS volume, formatted it, and mounted it in the Linux instance.
There is one more step to complete to configure the system to mount the new volume at boot time. Proceed to 
the next section to configure the filesystem table.
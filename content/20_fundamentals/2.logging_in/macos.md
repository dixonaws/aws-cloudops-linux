---
title: "macOS"
hidden: false
chapter: false
weight: 31
---

### macOS Terminal
Open a Terminal session and execute the following command, substituting the values
for _your_private_key.pem_ and _your_host_public_ip_ with the ones from Step 1. As for 
the private key, you should have been given an option to download this file when
you launched the instance.

This command will establish an SSH connection to your server, logging in with the user
_ec2-user_, which is the default on Amazon Linux 2. 

You can drag and drop the file into the terminal after "ssh -i " to get the file with its full path.

```
ssh -i /full_path/to/your_private_key_file.pem ec2-user@your_ec2_instance_public_ip
# Example: ssh -i ~/Downloads/my_private_key.pem ec2-user@1.2.3.4
```

{{%notice note%}}
If you are unable to establish a connection, you may need to change the permissions
of your private key file. You may see an error such as "WARNING: UNPROTECTED PRIVATE KEY FILE." 
In this case, just change the permissions of your private key to 400 (user read only) 
with the command:
```commandline
chmod 400 /full_path/to/your_private_key_file.pem
```
{{% /notice%}}

{{% notice note%}}
Try to establish a connection with the user _root_. You'll see that access is denied.
The _root_ user is typically not allowed to login via SSH. This is a common security
configuration that protects the system from compromise.
{{% /notice%}}


{{% notice note%}}
If you stop and start your instance throughout this workshop, when ssh'ing to your ec2 instance, 
ensure to use the current public ip address of your ec2 instance as it may have changed.
For details on why this happens, see "Public IPv4 addresses" at https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html 
"We release your instance's public IP address when it is stopped, hibernated, or terminated. 
Your stopped or hibernated instance receives a new public IP address when it is started."
{{% /notice%}}

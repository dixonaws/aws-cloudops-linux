---
title: "Windows"
hidden: false
chapter: false
weight: 32
---

### Windows PuTTY
To log into the EC2 instance from a Windows OS, follow below sections:

1) (This step is _only_ required if your key pair is saved as .pem format) _"Convert your private key using PuTTYgen"_ section under [these instructions](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/putty.html).

2) _"Connect to your Linux instance"_ section under [these instructions](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/putty.html). 

Use _ec2-user_ for _my-instance-user-name_ in the instructions.

{{% notice note%}}
If you plan on not using Putty on Windows, and instead will be using a Linux emulator or other commandline utility on Windows, please follow [the commandline instructions](https://linuxworkshop.aws-cloudops.com/20_fundamentals/2.logging_in/macos.html) and ensure to use the appropriate convention for the file separator ("\\" in Windows, "/" in Unix) in the full path to the private key file based on the commandline utility you chose.
{{% /notice%}}

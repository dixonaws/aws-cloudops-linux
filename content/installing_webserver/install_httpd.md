---
title: "Install Apache httpd"
chapter: false
weight: 15
---

Use the yum package manager to install a popular open-source web server, Apache httpd. 

1. Connect to the EC2 instance that you created earlier

Get the latest bug fixes and security updates by updating the software on your EC2 instance. To do this, use the following command:
```commandline
sudo yum update
```

After the updates complete, install the httpd software using the yum install command:

```commandline
sudo yum install -y httpd
```

Start the web server with this command:

```commandline
sudo systemctl start httpd
```

Note: 
The Apache test page appears only when there is no content in the document 
root directory, /var/www/html. After you add content to the document 
root directory, your content appears at the public DNS address of your EC2 
instance instead of the Apache test page.


Configure the web server to start with each system boot using the chkconfig command.

```commandline
sudo systemctl enable httpd
```

From your Linux instance, you should be able to browse to your web server. You can use a text-based browser called
lynx to browse to sites on the command line. 

Install it with this command:
```commandline
sudo yum install lynx-curses
```


Now issue this command to browse to your web server:

```
lynx http://localhost
```

At this point, you should have installed apache httpd and been able to browse to it from your Linux instance. In the next section, we'll configure 
the network so that you can access your web server from the internet.


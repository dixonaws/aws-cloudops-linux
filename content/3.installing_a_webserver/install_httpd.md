---
title: "Install Apache httpd"
chapter: false
weight: 15
---

In this section, we'll use the yum package manager to install a popular open-source web server, _Apache httpd_. Start connecting to the EC2 instance that you created earlier

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

{{%notice note%}} 
The Apache test page appears only when there is no content in the document 
root directory, /var/www/html. After you add content to the document 
root directory, your content appears at the public DNS address of your EC2 
instance instead of the Apache test page.
{{% /notice%}}

Configure the web server to start with each system boot using the chkconfig command:

```commandline
sudo systemctl enable httpd
```

From your Linux instance, you should be able to browse to your web server. You can use a text-based browser called
lynx to browse to sites on the command line. 

Install it with this command:
```commandline
sudo yum install lynx
```


Now issue this command to browse to your web server:

```
lynx http://localhost
```

Type _q_ to exit Lynx.

{{%notice note%}} 
You may initially see an error in the browser that
reads _HTTP 301 - Unauthorized_. This is the default response for new 
installations of Apache httpd. When you add some web content in the next section, this
error will not be shown.
{{% /notice%}}


At this point, you should have installed _Apache httpd_ and been able to browse to it from your Linux instance. 

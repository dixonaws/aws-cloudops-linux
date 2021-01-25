---
title: "Moving the web root"
chapter: false
weight: 10
---

By default, the Apache web server stores its documents in the _/var/www/html_ document root directory, which is located on the root filesystem. In this section, we will learn how to move this directory to the new mounted filesystem we configured previously.

Connect to the EC2 instance that you created earlier as you did in the _Logging in_ section.

First, change your directory to the root directory:

```commandline
cd /
```

We want to move the document root directory's content from _/var/www/html_ to the new mount point directory _/data_. 

Copy the document root directory's content to the new location using rsync:

```commandline
sudo rsync -av /var/www/html /data
```

Next, we need to modify Apache server's configuration file and make it use the new directory.

Open and edit the configuration file:

```commandline
sudo nano /etc/httpd/conf/httpd.conf 
```

In the document, find this section:

```
#
# DocumentRoot: The directory out of which you will serve your
# documents. By default, all requests are taken from this directory, but
# symbolic links and aliases may be used to point to other locations.
#
DocumentRoot "/var/www/html"

#
# Relax access to content within /var/www.
#
<Directory "/var/www">
    AllowOverride None
    # Allow open access:
    Require all granted
</Directory>

# Further relax access to the default document root:
<Directory "/var/www/html">
    #
    # Possible values for the Options directive are "None", "All",
    # or any combination of:

```

Modify _DocumentRoot_ and _Directory "/var/www/html"_ to use the new location:

```
#
# DocumentRoot: The directory out of which you will serve your
# documents. By default, all requests are taken from this directory, but
# symbolic links and aliases may be used to point to other locations.
#
DocumentRoot "/data/html"

#
# Relax access to content within /var/www.
#
<Directory "/var/www">
    AllowOverride None
    # Allow open access:
    Require all granted
</Directory>

# Further relax access to the default document root:
<Directory "/data/html">
    #
    # Possible values for the Options directive are "None", "All",
    # or any combination of:

```

Save the file. Now, let's test that the Apache server is actually configured to use the new location for its document root directory.

Remove the _index.html_ file you created before:

```commandline
sudo rm /var/www/html/index.html
```

Refresh your web browser. Your web site will not work. We need to restart the Apache server in order to use apply the new configuration.

Restart the Apache server:

```commandline
sudo systemctl restart httpd
```

Refresh again your browser. Your web site will be up and running. The Apache server uses the new location for its document root directory.

Congratulations! You've finished the Linux Workshop!
---
title: "Installing a Web Server"
chapter: true
weight: 40
pre: "<b>3. </b>"
---
### Exercise 3

# Installing a Web Server

What will we be doing in this section?

We will learn by _doing_ and will install an Apache web server using the yum package manager. 

We'll install the Apache Web Server (also referred to as _httpd_ - the HTTP Daemon). This is a very common (open source)
piece of software that you'll encounter in almost any company that has internet facing applications.
Other common web servers include:
- nginx (pronounced 'engine ex')
- Internet Information Services (IIS) - Microsoft

<br>
[According to Wikipedia](https://en.wikipedia.org/wiki/Web_server#/media/File:Usage_share_of_web_servers_(Source_Netcraft).svg), around 90% of web sites are served from Apache and nginx as of February 2019.
Microsoft IIS and others represent the remaining 10%. You can use a tool from Netcraft to determine what software a site is
running. [Try it here and inspect www.amazon.com](https://sitereport.netcraft.com/?url=http://www.amazon.com)
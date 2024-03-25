---
title: "Create a script"
chapter: no
weight: 241
pre: "<b>4.1 </b>"
---

First, create a script called ```get-instance-info.sh``` on your EC2 instance.

The contents of the script are the following:

```bash
#!/bin/bash

export INSTANCEID=$(curl -X GET http://169.254.169.254/1.0/meta-data/instance-id/)
touch /tmp/$INSTANCEID.txt
echo "Hello, World!" >> /tmp/$INSTANCEID.txt

aws s3 cp /tmp/$INSTANCEID.txt s3://my-new-bucket-lastname/
```

Of course, you will have to modify the script slightly to reference the name of your S3 bucket.

You will also have to make this script executable before you run it. Do you know the proper ```chmod``` command to
accomplish this? If you're attending a live online class, paste the answer into the chat!

Run the program to create a file and upload it to your S3 bucket. List the contents of your S3 bucket to be sure that it
has been copied successfully.

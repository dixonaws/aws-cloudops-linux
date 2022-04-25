---
title: "Create an S3 bucket"
chapter: false
weight: 213
pre: "<b>2.4 </b>"
---

Now that you have configured the CLI and confirmed that it is working, let's use it to create an S3 bucket and upload a
file. Create a new bucket with the following command:

```bash
aws s3 mb s3://my-new-bucket-<your last name>
```

Of course, replace <your last name> with your name as appropriate (do not include the < and > signs).

Create a text file named data.txt with the following: "hello, world!"


Upload the file to your new S3 bucket with the following command:
```bash
aws s3 cp data.txt s3://my-new-bucket-<your last name>
```

Now, get a listing of your S3 bucket. Do you know the command (or can you get it from the manual page)?
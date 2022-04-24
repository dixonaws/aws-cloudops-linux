---
title: "Create an S3 bucket"
chapter: false
weight: 213
pre: "<b>2.4 </b>"
---

aws s3 mb s3://my-new-bucket-yourname<br>
upload a file
```bash
touch myfile<br>
aws s3 cp myfile s3://my-new-bucket-yourname

#!/bin/bash

hugo --cleanDestinationDir
aws --profile jpdixon s3 sync public/ s3://linuxworkshop.aws-cloudops.com --delete
aws --profile jpdixon cloudfront create-invalidation --distribution-id "ENYZAVZK7AS42" --paths "/*"

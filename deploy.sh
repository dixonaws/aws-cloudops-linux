#!/bin/bash

hugo --cleanDestinationDir
aws s3 sync public/ s3://linuxworkshop.aws-cloudops.com --delete
aws cloudfront create-invalidation --distribution-id "E1KIZ5Z3MCU844" --paths "/*"

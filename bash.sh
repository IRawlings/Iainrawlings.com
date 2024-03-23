#!/bin/bash

# errors we had to fix here: 
# best practice to quite strings and avoid any odd bash behaviour
# removed $ from variable declarations - only requried when references the variables

# vars:
OUTPUTDIR="output"
S3_BUCKET="iainrawlings.com"
# Added CLOUDFRONT DIST ID to allow cache invalidation
CLOUDFRONT_DIST_ID="E1KXVSFIKUXWDG"

# generate content using the pelican command
pelican content

# upload to S3.
aws s3 cp "$OUTPUTDIR/" "s3://$S3_BUCKET" --recursive

# request to invalidate cloudfront dist
TEMP=$(aws cloudfront create-invalidation --distribution-id "$CLOUDFRONT_DIST_ID" --paths "/" | jq -r  ".Invalidation.Id")
echo "Invalidating Cloudfront cache..."
# await confirmation the invalidation has completed and then confirm
aws cloudfront wait invalidation-completed --id "$TEMP" --distribution-id "$CLOUDFRONT_DIST_ID"
echo "Invalidation request: '$TEMP' Completed. Upload Complete & Cache Reset"
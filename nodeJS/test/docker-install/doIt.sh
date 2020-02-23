#!/bin/sh

export JUICE_CONFIG='file:::/docker-install/config.json'
CMD=/juice-client/node_modules/\@tooltwist/juice-client/lib/juice-client

# Create entire directory
#${CMD} install template generated-files-1

# Copy individual files to directory
node ${CMD} install template/junk.binary generated-files-2
node ${CMD} install template/junk.json generated-files-2
node ${CMD} install template/junk.txt generated-files-2
node ${CMD} install template/junk.txt.zip generated-files-2
node ${CMD} install template/junk.utf generated-files-2

# Copy individual files to specific locations
node ${CMD} install template/junk.binary generated-files-3/binary
node ${CMD} install template/junk.json generated-files-3/jsonish
node ${CMD} install template/junk.txt generated-files-3/textual
node ${CMD} install template/junk.txt.zip generated-files-3/zippy
node ${CMD} install template/junk.utf generated-files-3/unicodish

# Convert directory inplace
cp -R template inplace-config
#${CMD} inplace inplace-config


echo Life is good
sleep 2
exit 1

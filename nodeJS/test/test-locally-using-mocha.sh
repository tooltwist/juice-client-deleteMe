#!/bin/sh

     export JUICE_CONFIG=file:::`pwd`/mocha-cli-config.json
echo export JUICE_CONFIG=${JUICE_CONFIG}


echo mocha mocha-cli-tests
     mocha mocha-cli-tests

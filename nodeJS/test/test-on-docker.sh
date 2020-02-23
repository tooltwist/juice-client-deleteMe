#!/bin/bash

TAG=juice-client-test
docker build -t ${TAG} . && docker run --rm ${TAG}

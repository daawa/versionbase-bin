#!/bin/bash

set -e
cd "$(dirname $0)"

../build.sh

docker build -f Dockerfile -t versionbase --platform linux/amd64 .

tag="$(date +%s)"

docker tag versionbase:latest harbor-xmn.int.rclabenv.com/versionbase/versionbase:$tag
docker push harbor-xmn.int.rclabenv.com/versionbase/versionbase:$tag

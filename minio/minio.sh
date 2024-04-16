#!/usr/bin/bash

docker run \
   -p 9000:9000 \
   -p 9001:9001 \
   --name minio \
   -v $MINIO_HOME/data:/data \
   -e "MINIO_ROOT_USER=ROOTROOT" \
   -e "MINIO_ROOT_PASSWORD=ROOTROOT" \
   quay.io/minio/minio server /data --console-address ":9001"
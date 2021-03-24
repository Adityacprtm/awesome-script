#!/bin/bash

checksum=e1348d94ce4caace43689ee2dfa5f8bcd8687c12053d9c13d79875b65d6b72aa

curl -O https://get.helm.sh/helm-v3.5.3-linux-amd64.tar.gz
checksumResult=$(sha256sum helm-v3.5.3-linux-amd64.tar.gz | awk '{print $1}')

if [ checksum == checksumResult ]; then
  echo "Valid download"
  tar -zxvf helm-v3.5.3-linux-amd64.tar.gz
  mv linux-amd64/helm /usr/local/bin/helm
else
  echo "The Download did not match checksum. abort"
fi

#!/bin/bash

curl -LO https://get.helm.sh/helm-v3.5.3-linux-amd64.tar.gz
curl -LO https://get.helm.sh/helm-v3.5.3-linux-amd64.tar.gz.sha256sum
result=$(echo "$(<helm-v3.5.3-linux-amd64.tar.gz.sha256sum) helm-v3.5.3-linux-amd64.tar.gz" | sha256sum --check)
if [ $result ]; then
  echo "Valid download"
  tar -zxvf helm-v3.5.3-linux-amd64.tar.gz
  mv linux-amd64/helm /usr/local/bin/helm
else
  echo "The Download did not match checksum. abort"
fi

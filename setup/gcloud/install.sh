#!/bin/bash

python --version
checksum=87107928d59194d85738e686607c93b273f98ef9f1dfab031e232d79afe22271
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-333.0.0-linux-x86_64.tar.gz
checksumResult=$(sha256sum google-cloud-sdk-333.0.0-linux-x86_64.tar.gz | awk '{print $1}')

if [ checksum == checksumResult ]; then
  echo "Valid download"
  tar -xzf google-cloud-sdk-333.0.0-linux-x86_64.tar.gz
  ./google-cloud-sdk/install.sh --usage-reporting false --command-completion true --additional-components alpha beta --quiet
else
  echo "The Download did not match checksum. abort"
fi

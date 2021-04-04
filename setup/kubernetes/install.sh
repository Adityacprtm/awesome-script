#!/bin/bash

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
result=$(echo "$(<kubectl.sha256) kubectl" | sha256sum --check)
if [ $result ]; then
  echo "Valid download"
  sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
  # kubectl version --client
else
  echo "The Download did not match checksum. abort"
fi

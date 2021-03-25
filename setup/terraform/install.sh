#!/bin/bash

## manual
# wget https://releases.hashicorp.com/terraform/0.14.8/terraform_0.14.8_linux_amd64.zip
# unzip terraform_0.14.7_linux_amd64.zip
# sudo mv terraform /usr/local/bin/

# auto
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform

echo "Terraform Installed"

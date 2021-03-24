#!/bin/bash

echo "MAKE SCRIPT EXECUTABLE..."
find . -type f -name "*.sh" -exec chmod +x {} \;

echo "INITIAL SETUP..."
sh ./initial/install.sh
# echo "ZSH & POWERLEVEL10K SETUP..."
# sh ./zsh/install.sh
echo "GCLOUD SDK SETUP..."
sh ./gcloud/install.sh
echo "KUBECTL SETUP..."
sh ./kubernetes/install.sh
echo "HELM CHART SETUP..."
sh ./helm/install.sh
echo "TERRAFORM SETUP..."
sh ./terraform/install.sh

echo "DONE"

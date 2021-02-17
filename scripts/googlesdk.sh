#!/bin/bash
echo "---------------------------"
echo "Install Google Cloud SDK..."
echo "---------------------------"

sudo apt install -y apt-transport-https ca-certificates gnupg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt update && sudo apt install -y google-cloud-sdk

# google-cloud-sdk-app-engine-python
# google-cloud-sdk-app-engine-python-extras
# google-cloud-sdk-app-engine-java
# google-cloud-sdk-app-engine-go
# google-cloud-sdk-bigtable-emulator
# google-cloud-sdk-cbt
# google-cloud-sdk-cloud-build-local
# google-cloud-sdk-datalab
# google-cloud-sdk-datastore-emulator
# google-cloud-sdk-firestore-emulator
# google-cloud-sdk-pubsub-emulator
# kubectl

# Run gcloud init to get started:

exit 0

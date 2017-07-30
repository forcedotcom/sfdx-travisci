#!/bin/sh
# openssl aes-256-cbc -K $encrypted_e4d46d33ade3_key -iv $encrypted_e4d46d33ade3_iv -in assets/server.key.enc -out assets/server.key -d
# export SFDX_AUTOUPDATE_DISABLE=true
# export SFDX_USE_GENERIC_UNIX_KEYCHAIN=true
# export SFDX_DOMAIN_RETRY=300
# wget -qO- https://developer.salesforce.com/media/salesforce-cli/sfdx-linux-amd64.tar.xz | tar xJf - 
# "./sfdx/install"
# export PATH=./sfdx/$(pwd):$PATH
# sfdx update
sfdx force:source:convert -d mdapioutput/
sfdx force:auth:jwt:grant --clientid $DP_CONSUMERKEY --jwtkeyfile assets/server.key --username $DP_USERNAME
sfdx force:mdapi:deploy -d mdapioutput/ -u $DP_USERNAME -w 100
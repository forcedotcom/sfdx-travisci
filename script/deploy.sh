#!/bin/sh
sfdx force:source:convert -d mdapioutput/
sfdx force:auth:jwt:grant --clientid $DP_CONSUMERKEY --jwtkeyfile assets/server.key --username $DP_USERNAME
sfdx force:mdapi:deploy -d mdapioutput/ -u $DP_USERNAME -w 100
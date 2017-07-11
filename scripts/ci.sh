#!/bin/bash
set -e

# PR ? Deploy to test box for verification
if [ "${TRAVIS_EVENT_TYPE}" = "pull_request" ]; then
    ./create_pr_org
    sfdx force:source:push -u $TRAVIS_PULL_REQUEST_BRANCH
    sfdx force:apex:test:run -u $TRAVIS_PULL_REQUEST_BRANCH -c

# PUSH ? Deploy merged code to designated locations
elif [ "${TRAVIS_EVENT_TYPE}" = "push" ]; then
    if [ "${TRAVIS_BRANCH}" = "dev" ]; then
        ant deploy -Dsfdc.username=$username_uat -Dsfdc.password=$password_uat -Dsfdc.serverurl=$url_uat
    fi
fi

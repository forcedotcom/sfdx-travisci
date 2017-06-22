# sfdx-travisci [![Build Status](https://travis-ci.org/forcedotcom/sfdx-travisci.svg?branch=master)](https://travis-ci.org/forcedotcom/sfdx-travisci)

This repository shows one way you can successfully setup Salesforce DX with Travis CI. We make a few assumptions in this README:

- You are currently a part of the Salesforce DX Beta. If you're not, you can [join the beta](https://staging.developer.salesforce.com/promotions/orgs/dx-signup).
- You know how to get your Github repository setup with Travis CI. (Here's their [Getting Started guide](https://docs.travis-ci.com/user/getting-started/).)
- You've installed the [Travis CLI](https://github.com/travis-ci/travis.rb#installation). 
- You have properly setup JWT-Based Authorization Flow (i.e. headless). I recommend using [these steps for generating your Self-Signed SSL Certificate](https://devcenter.heroku.com/articles/ssl-certificate-self). 

If any any of these assumptions aren't true, the following steps won't work.

## Getting Started

1) Make sure you have the Salesforce DX CLI installed. Check by running `sfdx force --help` and confirm you see the command output.

2) Confirm you can perform a JWT-based auth: `sfdx force:auth:jwt:grant --clientid <your_consumer_key> --jwtkeyfile server.key --username <your_username> --setdefaultdevhubusername`
// TODO Link to setting up JWT-based auth in Developer Guide.

3) Create a Github repo called `sfdx-travisci`.

4) Create a new SFDX workspace: `sfdx force:workspace:create -n sfdx-travisci`

5) In the newly created directory, initialize git: `git init`

6) Add your Github repo as a remote: `git remote add origin git@github.com:<git-username>/sfdx-travisci.git`

7) Set your `Consumer Key` and `Username` using the Travis CLI.

    travis env set CONSUMERKEY <your_consumer_key>
    travis env set USERNAME <your_username>

8) Create a folder called `assets` and add your `server.key` to the folder.

9) Encrypt your `server.key` value:

    travis encrypt-file assets/server.key assets/server.key.enc

10) Remove your `server.key`: `rm assets/server.key`

11) Create a `.travis.yml` file: `touch .travis.yml`

12) Update the `.travis.yml` similar to the one in this repo, replacing with your own values.

And you should be ready to go! Now when you commit and push a change, your change will kick off a Travis CI build.

Enjoy!

## Contributing to the Repository ###

If you find any issues or opportunities for improving this respository, fix them!  Feel free to contribute to this project by [forking](http://help.github.com/fork-a-repo/) this repository and make changes to the content.  Once you've made your changes, share them back with the community by sending a pull request. Please see [How to send pull requests](http://help.github.com/send-pull-requests/) for more information about contributing to Github projects.

## Reporting Issues ###

If you find any issues with this demo that you can't fix, feel free to report them in the [issues](https://github.com/wadewegner/sfdx-travisci/issues) section of this repository.

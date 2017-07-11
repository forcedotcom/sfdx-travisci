#alias=$( sfdx force:org:list | grep "$TRAVIS_PULL_REQUEST_BRANCH" | awk '{print $1;}' )

if sfdx force:org:display -u $TRAVIS_PULL_REQUEST_BRANCH > /dev/null 2>/dev/null; then
  echo "Scratch org with alias '$TRAVIS_PULL_REQUEST_BRANCH' already exists. Skipping org creation."
else
  echo "Creating scratch org with alias '$TRAVIS_PULL_REQUEST_BRANCH'..."

  # copy CI org config and set the org name to the current branch
  config_file="config/${TRAVIS_PULL_REQUEST_BRANCH}-def.json"
  sed -e "s/testOrg/${TRAVIS_PULL_REQUEST_BRANCH}/g" config/ci-scratch-def.json > $config_file

  sfdx force:org:create -f $config_file -a $TRAVIS_PULL_REQUEST_BRANCH
fi

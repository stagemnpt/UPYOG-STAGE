#!/bin/sh

BRANCH="$(git branch --show-current)"

echo $BRANCH

if [ "$BRANCH" != "dev" ] || [ "$BRANCH" != "master" ]; then

  INTERNALS="digit-ui-internals"
  rm -rf $INTERNALS
  git clone -b development https://github.com/egovernments/digit-ui-internals.git $INTERNALS
  cd $INTERNALS && yarn && yarn build && find . -name "node_modules" -type d -prune -print -exec rm -rf '{}' \;
  cd ..

  rm -rf node_modules
  # rm yarn.lock

fi

# yarn install

#!/bin/sh -l

cd $GITHUB_WORKSPACE
#git checkout stable-website
git config --local user.email "action@github.com"
git config --local user.name "GitHub Action"
echo $(git rev-parse HEAD)
echo "cherry picking $GITHUB_SHA"
git cherry-pick $GITHUB_SHA
git push origin stable-website

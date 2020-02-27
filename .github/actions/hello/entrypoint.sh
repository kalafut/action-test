#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time
git clone git@github.com:kalafut/action-test
git checkout stable-website
echo $time > blah
git add blah
git commit -m "yay"
git push origin stable-website

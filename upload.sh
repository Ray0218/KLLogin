#!/bin/bash

VersionString="grep -E 'spec.version.*=' KLLogin.podspec"
VersionNumber=`tr -cd 0-9 <<<"$VersionString"`
NewVersionNumber=$($VersionNumber + 1)
 echo "current version is ${VersionNumber}, new version is ${NewVersionNumber}"

git add .
git commit -am ${NewVersionNumber}
git tag ${NewVersionNumber}
git push origin master --tags
pod repo push CustomPrivatePods KLLogin.podspec --allow-warnings --use-libraries --use-modular-headers

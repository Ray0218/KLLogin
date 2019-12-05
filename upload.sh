#!/bin/bash

VersionString="grep -E 'spec.version.*=' KLLogin.podspec"
VersionNumber=`tr -cd 0-9 <<<"$VersionString"`

NewVersionNumber=$(($VersionNumber + 1))
LineNumber=`grep -nE 'spec.version.*=' KLLogin.podspec | cut -d : -f1`
sed -i "" "${LineNumber}s/${VersionNumber}/${NewVersionNumber}/g" KLLogin.podspec

echo " ss  ${VersionNumber}current version is ${VersionNumber}, new version is ${NewVersionNumber}"

git add .
git commit -am ${NewVersionNumber}
git tag ${NewVersionNumber}
git push origin master --tags
pod repo push CustomPrivatePods KLLogin.podspec --allow-warnings --use-libraries --use-modular-headers

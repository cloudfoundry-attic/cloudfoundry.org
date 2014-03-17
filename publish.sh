#!/bin/bash

# Use this publish script if you are still on cf v5

sh build.sh

cf target https://api.run.pivotal.io

cf login -o cfcommunity -s cforg

curl_results=$(curl cforg1.cfapps.io)
if [[ $curl_results == *cforg1.cfapps.io* ]]
then
  cf start cforg1
  cf push cforg1
  echo Does cforg1.cfapps.io look good? [y/n]
  read
  if [ "$REPLY" = "y" ]; then
    echo Great! Moving on to mapping ...
  else
    echo Stopping cforg1, logging out and exiting this script...
    cf stop cforg1
    cf logout
    exit
  fi 
  cf map cforg1 www.cloudfoundry.org
  cf unmap .www.cloudfoundry.org cforg2
  cf map cforg1 cloudfoundry.org
  cf unmap .cloudfoundry.org cforg2
  cf stop cforg2
else
  cf start cforg2
  cf push cforg2
  echo Does cforg2.cfapps.io look good? [y/n]
  read
  if [ "$REPLY" = "y" ]; then
    echo Great! Moving on to mapping ...
  else
    echo Stopping cforg2, logging out and exiting this script...
    cf stop cforg2
    cf logout
    exit
  fi 
  cf map cforg2 www.cloudfoundry.org
  cf unmap .www.cloudfoundry.org cforg1
  cf map cforg2 cloudfoundry.org
  cf unmap .cloudfoundry.org cforg1
  cf stop cforg1
fi

cf logout


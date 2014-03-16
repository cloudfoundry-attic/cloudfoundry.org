#!/bin/bash

sh build.sh

cf api https://api.run.pivotal.io

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
  cf map-route cforg1 cloudfoundry.org -n www
  cf unmap-route cforg2 cloudfoundry.org -n www
  cf map-route cforg1 cloudfoundry.org
  cf unmap-route cforg2 cloudfoundry.org
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
  cf map-route cforg2 cloudfoundry.org -n www
  cf unmap-route cforg1 cloudfoundry.org -n www
  cf map-route cforg2 cloudfoundry.org
  cf unmap-route cforg1 cloudfoundry.org
  cf stop cforg1
fi

cf logout
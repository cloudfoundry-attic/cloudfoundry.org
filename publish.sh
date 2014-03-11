#!/bin/bash

curl_results=$(curl cforg1.cfapps.io)

if [[ $curl_results == *cforg1.cfapps.io* ]]
then
  cf start cforg1
  cf push cforg1

  cf map cforg1 www.cloudfoundry.org
  cf unmap .www.cloudfoundry.org cforg2
  cf map cforg1 cloudfoundry.org
  cf unmap .cloudfoundry.org cforg2
  cf stop cforg2
else
  cf start cforg2
  cf push cforg2

  cf map cforg2 www.cloudfoundry.org
  cf unmap .www.cloudfoundry.org cforg1
  cf map cforg2 cloudfoundry.org
  cf unmap .cloudfoundry.org cforg1
  cf stop cforg1
fi


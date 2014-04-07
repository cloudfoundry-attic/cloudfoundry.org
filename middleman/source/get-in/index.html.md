---
title: Get Involved and Contribute
---

# Get Involved and Contribute

Cloud Foundry is an open source project. Join our open ecosystem of cloud frameworks and services, add features, comment on design docs, report or fix a bug, contribute documentation or technical articles. We welcome your contribution.

The Cloud Foundry open source project is comprised of a number of different repositories.  All of them can be found at [https://github.com/cloudfoundry](https://github.com/cloudfoundry), but here's a brief overview of the main projects to help you get started:

* [Cloud Controller (CCNG)](https://github.com/cloudfoundry/cloud_controller_ng) is the primary entry point for Cloud Foundry.

* [GoRouter](https://github.com/cloudfoundry/gorouter) is the central router that manages traffic to applications deployed on Cloud Foundry.

* [Droplet Execution Agent (DEA)](https://github.com/cloudfoundry/dea_ng) stages and hosts applications.

* [Health Manager](https://github.com/cloudfoundry/health_manager) monitors the state of the applications.

* [Cloud Foundry CLI](https://github.com/cloudfoundry/cli) is the official command line client for Cloud Foundry.

* [Cloud Foundry Login Server](https://github.com/cloudfoundry/login-server) handles authentication.

* [Cloud Foundry UAA](https://github.com/cloudfoundry/uaa) is the identity management service for Cloud Foundry.

* [Loggregator](https://github.com/cloudfoundry/loggregator) is the user application logging subsystem for Cloud Foundry.

* [BOSH](https://github.com/cloudfoundry/bosh) is used for release engineering, deployment and lifecycle management.

<br>

## Learn

To learn more about Cloud Foundry, visit one or more of the following resources:

* The Cloud Foundry Blog: [http://blog.cloudfoundry.com](http://blog.cloudfoundry.com)
* The Wiki: [https://github.com/cloudfoundry-community/cf-docs-contrib/wiki](https://github.com/cloudfoundry-community/cf-docs-contrib/wiki)
* Cloud Foundry Open Source Documentation: [http://docs.cloudfoundry.org](http://docs.cloudfoundry.org)
* The Cloud Foundry YouTube Channel: [http://www.youtube.com/cloudfoundry](http://www.youtube.com/cloudfoundry)

<br>

## Meetups and Events

Come meet other CF newbies and pros at a Cloud Foundry meetup or event. 

* [Silicon Valley](http://www.meetup.com/CloudFoundry/)
* [San Diego, Ca](http://www.meetup.com/San-Diego-Cloud-Foundry-Meetup)
* [Palo Alto, Ca](http://www.meetup.com/Cloud-Foundry-Community-Meetup/)
* [Los Angeles, Ca](http://www.meetup.com/Los-Angeles-Cloud-Foundry-Meetup)
* [Bay Area Bosh](http://www.meetup.com/Bay-Area-Bosh/)
* [Boston Area](http://www.meetup.com/Boston-Area-Cloud-Foundry-Meetup/)
* [New York City](http://www.meetup.com/New-York-City-Cloud-Foundry-Meetup/)
* [Seattle, Wa](http://www.meetup.com/CloudFoundrySeattle/)
* [Minneapolis-St. Paul](http://www.meetup.com/cloudfoundry-mn)
* [Toronto](http://www.meetup.com/Cloud-Foundry-Toronto)
* [Colorado](http://www.meetup.com/Colorado-Cloud-Foundry-Meetup)
* [Austin, Tx](http://www.meetup.com/Cloud-Foundry-Austin)
* [Washington, DC](http://www.meetup.com/Washington-Cloud-Foundry-Meetup)
* [Portland, Or](http://www.meetup.com/Portland-Cloud-Foundry-Meetup)
* [Netherlands](http://www.meetup.com/Cloud-Foundry-User-Group-The-Netherlands)
* [St Louis, Mo](http://www.meetup.com/Saint-Louis-Cloud-Foundry-Meetup)
* [Beijing, China](http://www.meetup.com/Beijing-Cloud-Foundry-Meetup)
* [Pivotal Open Source Hub](http://www.meetup.com/Pivotal-Open-Source-Hub/)

In 2013, we had our first Cloud Foundry User Conference.  [Visit the conference site](http://www.platformcf.com/) to view session recordings and slides.


<br>

## Ask Questions

Questions about the Cloud Foundry Open Source Project can be directed to our Google Groups:

* BOSH Developers: [https://groups.google.com/a/cloudfoundry.org/group/bosh-dev/topics](https://groups.google.com/a/cloudfoundry.org/group/bosh-dev/topics)
* BOSH Users: [https://groups.google.com/a/cloudfoundry.org/group/bosh-users/topics](https://groups.google.com/a/cloudfoundry.org/group/bosh-users/topics)
* VCAP (Cloud Foundry) Developers: [https://groups.google.com/a/cloudfoundry.org/group/vcap-dev/topics](https://groups.google.com/a/cloudfoundry.org/group/vcap-dev/topics)

<br>

## File a Bug

Bugs can be filed using Github Issues within the various repositories listed above.  Check the project's README for any specific instructions.

Please review our [Public Trackers](https://github.com/cloudfoundry-community/cf-docs-contrib/wiki#wiki-roadmap-and-trackers) first to see what's already in the queue to be fixed.

<br>

## Contribute to the Wiki

See something on the [wiki](https://github.com/cloudfoundry-community/cf-docs-contrib/wiki) that's missing or could use some clarification?  Go ahead and update it.  All you need are your GitHub credentials.

<br>

## Contribute Code

Below are the general steps to make a code contribution.  For each project, please review the repository's README to see if there are any other specific instructions.

1. Ensure that you have either completed our CLA Agreement for [individuals](http://www.cloudfoundry.org/individualcontribution.pdf) or are a public member of an organization that has signed the [corporate](http://www.cloudfoundry.org/corpcontribution.pdf) CLA.

2. Set your name and email (these should match the information on your submitted CLA):

        git config --global user.name "Firstname Lastname"
        git config --global user.email "your_email@example.com"

3. Fork the project's repository

4. Create a feature branch (e.g. ```git checkout -b better_bosh```) and make changes on your branch

5. Push to your fork (e.g. ```git push origin better_bosh```) and [submit a pull request](https://help.github.com/articles/creating-a-pull-request)

If you have a CLA on file, your contribution will be analyzed for engineering quality and product fit prior to merging.

Note: All contributions need to be sent using GitHub Pull Requests, and we favor pull requests with very small, single commits with a single purpose.  Your pull request is much more likely to be accepted if it includes tests and is small and focused with a clear message that conveys the intent of your change.











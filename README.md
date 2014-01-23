cloudfoundry.org
=========

[cloudfoundry.org] is the community site for Cloud Foundry.  

>Cloud Foundry is the industry's *open* Platform as a Service (PaaS), providing a choice of clouds, frameworks, and application services.


Technology
-----------

cloudfoundry.org uses a number of open source projects to work properly:

* [Cloud Foundry] - The open platform as a service providing a faster and easier way to build, test, deploy and scale applications.
* [Twitter Bootstrap] - great UI boilerplate for modern web apps
* [Dillinger] - online cloud based HTML5 filled Markdown Editor
* [Brackets] - open source code editor

Setting up
--------------
cloudfoundry.org uses a [Fork and Pull] model of collaborative development.  Follow this link to learn how to [Fork a Repo]. 

1. **Point your browser at https://github.com/cloudfoundry/cloudfoundry.org and click "Fork".**
2. **From shell/prompt:**

```sh
> git clone https://github.com/username/cloudfoundry.org.git
# Clones your fork of the repository into the current directory

> cd cloudfoundry.org
# Changes the active directory to the newly cloned "cloudfoundry.org" directory

> git remote add upstream https://github.com/cloudfoundry/cloudfoundry.org.git
# Assigns the original repository to a remote called "upstream"

> git fetch upstream
# Pulls in changes not present in your local repository, without modifying your files
```

Governance and Guidelines
--------------
###Issues
* All issues (bugs, enhancements, questions, etc.) are tracked via the [cloudfoundry issues] page
* Each issue should be contained inside its own branch
* Each branch should be named after the issue number (iss1, iss2, etc)

#####To check if the issue already has a branch:

```sh
> git branch -r
  origin/HEAD -> origin/master
  origin/master
  upstream/iss4
  upstream/master
```
As you can see from the output above, _Issue #4_ is in progress (**upstream/iss4**).

####To contribute to issue that is IN PROGRESS:
Let's say that you want to work on _Issue #4_:

**From shell/prompt**:

```sh
> git fetch upstream
> git checkout --track upstream/iss4
# makes iss4 the active branch in your workspace, and sets up the "upstream" configuration, and merges the remote branch with your local workspace
```

You may now start working on the issue.  

####To INITIATE work on an issue:

Let's say the issues list contains the following issue:

_Issue #9: add directory structure and files for bootstrap-based site_

**From shell/prompt**:

```sh
> git checkout --track -b upstream/iss9
# creates a new remote branch called "iss9", makes it the active branch, and sets up the "upstream" configuration

> git fetch upstream iss9
```

You may now start working on the issue.  

Testing
--------------
### Run locally

See [http://tomcat.apache.org/](http://tomcat.apache.org/) to install tomcat.

Go to the webapps direrctory of your tomcat installation

create a cloudfoundry directory 
```sh
> md cloudfoundry
```
Change directories to the cloudfoundry directory
```sh
> cd cloudfoundry
```

Copy the files from the directory where you cloned the cloudfoundry repository to the cloudfoundry directory you just created

Change directories to the tomcat bin directory
```sh
> cd apache-tomcat-7.0.35/bin
```
The *apache-tomcat-7.0.35* is the directory that was created where the tomcat package was unzipped.  Your directory may be slightly different based on the version of tomcat you downloaded

Run the appropriate startup command:
#####Unix
```sh
> startup.sh
```
#####Windows
```sh
> startup.bat
```
In your browser type *http://localhost:8080/cloudfoundry/*

Now that you have it running locally you can start to develop and test new functionality and content

### deploy to cf

See the [CF Getting Started guide](http://docs.cloudfoundry.com/docs/dotcom/getting-started.html) if this is your first CF app.  

Then...

Change directories to the root of where you have been doing your development.
```sh
> cf push appname 
(you can give your app any name you wish app name is a placeholder)
> cf start appname
```

Smoke test new app (eg. http://appname.cfapps.io).

When you have tested your changes, and it is time to merge the changes in to the branch created earlier...

**Commit and push your changes**

```sh
> git commit -a -m "added directory structure for bootstrap-based site [issue 9]"
> git push upstream iss9

```

**Create a Pull Request**

WIP

[cloudfoundry.org]:http://cloudfoundry.org/
[cloudfoundry issues]:https://github.com/cloudfoundry/cloudfoundry.org/issues
[Twitter Bootstrap]:http://getbootstrap.com/
[Fork and Pull]:https://help.github.com/articles/using-pull-requests
[Fork a Repo]:https://help.github.com/articles/fork-a-repo
[Dillinger]:http://dillinger.io/
[Brackets]:http://brackets.io/
[Cloud Foundry]:http://cloudfoundry.com/
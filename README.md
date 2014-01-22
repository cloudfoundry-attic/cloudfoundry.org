cloudfoundry.org
=========

[cloudfoundry.org] is the community site for Cloud Foundry.  

>Cloud Foundry is the industry's *open* Platform as a Service (PaaS), providing a choice of clouds, frameworks, and application services.


Technology
-----------

cloudfoundry.org uses a number of open source projects to work properly:

* [Twitter Bootstrap] - great UI boilerplate for modern web apps
* [Dillinger] - online cloud based HTML5 filled Markdown Editor
* [Brackets] - open source code editor

Setting up
--------------
cloudfoundry.org uses a [Fork and Pull] model of collaborative development.  Follow this link to learn how to [Fork a Repo]. 

1. #####Point your browser at https://github.com/cloudfoundry/cloudfoundry.org and click "Fork".
2. #####From shell/prompt:

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


[cloudfoundry.org]:http://cloudfoundry.org/
[Twitter Bootstrap]:http://getbootstrap.com/
[Fork and Pull]:https://help.github.com/articles/using-pull-requests
[Fork a Repo]:https://help.github.com/articles/fork-a-repo
[Dillinger]:http://dillinger.io/
[Brackets]:http://brackets.io/
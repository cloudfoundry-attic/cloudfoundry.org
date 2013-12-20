cloudfoundry.org
================

the rails app that serves content for cloudfoundry.org

### run locally

See [http://tomcat.apache.org/](http://tomcat.apache.org/) to install tomcat.

```
fork cloudfoundry.org
git clone https://github.com/xxx/cloudfoundry.org.git (Where xxx is your GitHub UserID)
go to the webapps direrctory of your tomcat installation
create a cloudfoundry directory (md cloudfoundry)
cd cloudfoundry
copy the files from the directory where you cloned the cloudfoundry repository to the cloudfoundry directory you just created
cd to the tomcat bin directory
run the appropriate startup command (Unix startup.sh or Windows startup.bat)
in your browser type http://localhost:8080/cloudfoundry/
```

Now that you have it running locally you can start to develop and test new functionality and content

### deploy to cf

See the [CF Getting Started guide](http://docs.cloudfoundry.com/docs/dotcom/getting-started.html) if this is your first CF app.  Then...

```
cd to the root of the directory where you have been doing your development work
cf push appname (you can give your app any name you wish app name is a placeholder)
cf start appname
```

Smoke test new app (eg. http://appname.cfapps.io).

### pull request

Now that you have successfully developed new content and/or functionality for cloudfoundry.org you are ready to submit a pull request.  To do this simply go to your forked repository and click on the Pull Requests link and then click on the New pull request button to generate a request to have your new content/functinality added to cloudfoundry.org.

When you have completed your request, it will be reviewed by the cloudfoundry.org review board and it will either be accepted or you will receive notification that there is more work to be done along with an explanation of what work items need to be completed.

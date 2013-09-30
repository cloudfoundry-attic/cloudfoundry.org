cloudfoundry.org
================

the rails app that serves content for cloudfoundry.org

### run locally

See [RailsInstaller.org](http://railsinstaller.org/en) if this is your first Ruby 1.9.3 app.

```
bundle install
rake db:migrate
rails s
```

Once you have it running locally, you'll need to copy the layout from the admin console (and then, in order, create the Home page and its child pages About and Dojo).

### deploy to cf

See the [CF Getting Started guide](http://docs.cloudfoundry.com/docs/dotcom/getting-started.html) if this is your first CF app.  Then...

Change the name of the app you're pushing in the manifest.yml file (eg. cforg1 or cforg) depending on which is stopped (eg. if cforg is the live version, you would change the name of the app in manifest.yml to cforg1).

```
rake assets:precompile
cf push
cf start appname
```

Smoke test new app (eg. http://cforg1.cfapps.io).  Then map both to cloudfoundry.org & www.cloudfoundry.org domains and unmap & stop the older version.  (Mapping ensures there is no downtime.)

For example, if cforg1 is the newer version you just pushed ... 

```
cf map cforg1 cloudfoundry.org
cf map cforg1 www.cloudfoundry.org
cf unmap .cloudfoundry.org cforg
cf unmap .www.cloudfoundry.org cforg
cf stop cforg

```
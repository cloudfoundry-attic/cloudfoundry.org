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

### deploy to cf

See the [CF Getting Started guide](http://docs.cloudfoundry.com/docs/dotcom/getting-started.html) if this is your first CF app.  Then...

```
rake assets:precompile
cf push
```
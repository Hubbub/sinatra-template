# Sinatra Service Starter Kit

This starter kit has everything needed for a basic service set up and
configured, apart from a few options that will be unique to your service.

## Deployment

It should be enough to just push this to Heroku:

```
heroku create --name my-great-app
git push heroku master
```

Some additional configuration can be done as well:

```
heroku config:set NEW_RELIC_AGENT_ENABLED=true
heroku config:set NEW_RELIC_LICENSE_KEY=$MY_LICENSE_KEY
heroku config:set NEW_RELICE_APP_NAME="My Great App"
heroku config:set CORS_ALLOWED_ORIGINS="https://www.hubbub.co.uk/" # Comma separated CORS origins.
heroku config:set CORS_ALLOWED_HEADERS="Content-Type,X-API-Key" # Comma separated CORS headers.
heroku restart
```

Logging to Papertrail needs to be configured separately by visiting
https://papertrailapp.com/systems/new and selecting "I use Heroku".

## Local Development

Install any dependent gems, and run rackup. This is tested on Ruby 2.1,
but should run on 1.9 upwards.

```
bundle
PORT=8080 rackup
```

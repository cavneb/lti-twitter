# Twitter LTI

Embed a Twitter widget into your LMS with this LTI App.

### Usage

This gem is a mountable Rails engine. To use this you will need to include the gem into a Rails application them mount the engine in the
routes file. Example:

    # Gemfile
    gem "lti-twitter", "~> 0.0.2"

    # routes.rb
    mount TwitterLti::Engine, at: "/twitter"

You will also need to create a new file in your config folder called `twitter_lti_config.yml`. This will contain the credentials for
using the Twitter API.

    default: &default
      consumer_key:        CONSUMER_KEY
      consumer_secret:     CONSUMER_SECRET
      access_token:        ACCESS_TOKEN
      access_token_secret: ACCESS_TOKEN_SECRET

    development:
      <<: *default

    test:
      <<: *default

    production:
      <<: *default

Once this is done, you should be able to go to */twitter* on your app and the LTI app will appear.
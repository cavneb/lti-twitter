require 'ostruct'
require 'ims'
require "twitter_lti/twitter_lti_config"

module TwitterLti
  mattr_accessor :app_root

  def self.setup
    yield self
  end

  def self.config
    yield(TwitterLti::Config)
  end
end

require "twitter_lti/engine"

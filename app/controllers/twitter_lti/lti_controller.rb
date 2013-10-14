require_dependency "twitter_lti/application_controller"

module TwitterLti
  class LtiController < ApplicationController

    def index
      @launch_params = params.reject!{ |k,v| ['controller','action'].include? k }
    end

  end
end

Rails.application.routes.draw do

  mount TwitterLti::Engine => "/twitter_lti"
end

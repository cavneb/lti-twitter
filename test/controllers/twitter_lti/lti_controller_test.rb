require 'test_helper'

module TwitterLti
  class LtiControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end

  end
end

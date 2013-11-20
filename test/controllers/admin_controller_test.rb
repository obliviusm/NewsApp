require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get article" do
    get :article
    assert_response :success
  end

end

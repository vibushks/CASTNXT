require 'test_helper'

class GauthcontrollerControllerTest < ActionDispatch::IntegrationTest
  test "should get handle" do
    get gauthcontroller_handle_url
    assert_response :success
  end

end

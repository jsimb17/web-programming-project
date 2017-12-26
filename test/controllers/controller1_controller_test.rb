require 'test_helper'

class Controller1ControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get controller1_home_url
    assert_response :success
  end

  test "should get about" do
    get controller1_about_url
    assert_response :success
  end

  test "should get help" do
    get controller1_help_url
    assert_response :success
  end

end

require 'test_helper'

class HelprequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @helprequest = helprequests(:one)
  end

  test "should get index" do
    get helprequests_url
    assert_response :success
  end

  test "should get new" do
    get new_helprequest_url
    assert_response :success
  end

  test "should create helprequest" do
    assert_difference('Helprequest.count') do
      post helprequests_url, params: { helprequest: { content: @helprequest.content, subject: @helprequest.subject } }
    end

    assert_redirected_to helprequest_url(Helprequest.last)
  end

  test "should show helprequest" do
    get helprequest_url(@helprequest)
    assert_response :success
  end

  test "should get edit" do
    get edit_helprequest_url(@helprequest)
    assert_response :success
  end

  test "should update helprequest" do
    patch helprequest_url(@helprequest), params: { helprequest: { content: @helprequest.content, subject: @helprequest.subject } }
    assert_redirected_to helprequest_url(@helprequest)
  end

  test "should destroy helprequest" do
    assert_difference('Helprequest.count', -1) do
      delete helprequest_url(@helprequest)
    end

    assert_redirected_to helprequests_url
  end
end

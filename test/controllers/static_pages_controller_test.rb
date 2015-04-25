require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get landing" do
    get :landing
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get select_group" do
    get :select_group
    assert_response :success
  end

  test "should get select_class" do
    get :select_class
    assert_response :success
  end

  test "should get create_class" do
    get :create_class
    assert_response :success
  end

  test "should get create_group" do
    get :create_group
    assert_response :success
  end

  test "should get group_details" do
    get :group_details
    assert_response :success
  end

end

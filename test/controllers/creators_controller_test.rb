require 'test_helper'

class CreatorsControllerTest < ActionController::TestCase
  setup do
    @creator = creators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:creators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create creator" do
    assert_difference('Creator.count') do
      post :create, creator: { course_id: @creator.course_id, create_date: @creator.create_date, study_group_id: @creator.study_group_id }
    end

    assert_redirected_to creator_path(assigns(:creator))
  end

  test "should show creator" do
    get :show, id: @creator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @creator
    assert_response :success
  end

  test "should update creator" do
    patch :update, id: @creator, creator: { course_id: @creator.course_id, create_date: @creator.create_date, study_group_id: @creator.study_group_id }
    assert_redirected_to creator_path(assigns(:creator))
  end

  test "should destroy creator" do
    assert_difference('Creator.count', -1) do
      delete :destroy, id: @creator
    end

    assert_redirected_to creators_path
  end
end

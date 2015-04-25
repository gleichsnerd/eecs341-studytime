require 'test_helper'

class MeetingTimesControllerTest < ActionController::TestCase
  setup do
    @meeting_time = meeting_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meeting_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meeting_time" do
    assert_difference('MeetingTime.count') do
      post :create, meeting_time: { mtime: @meeting_time.mtime, study_group_id: @meeting_time.study_group_id }
    end

    assert_redirected_to meeting_time_path(assigns(:meeting_time))
  end

  test "should show meeting_time" do
    get :show, id: @meeting_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meeting_time
    assert_response :success
  end

  test "should update meeting_time" do
    patch :update, id: @meeting_time, meeting_time: { mtime: @meeting_time.mtime, study_group_id: @meeting_time.study_group_id }
    assert_redirected_to meeting_time_path(assigns(:meeting_time))
  end

  test "should destroy meeting_time" do
    assert_difference('MeetingTime.count', -1) do
      delete :destroy, id: @meeting_time
    end

    assert_redirected_to meeting_times_path
  end
end

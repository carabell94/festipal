require 'test_helper'

class SchedulesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get schedules_index_url
    assert_response :success
  end

  test "should get create" do
    get schedules_create_url
    assert_response :success
  end

  test "should get update" do
    get schedules_update_url
    assert_response :success
  end

  test "should get destroy" do
    get schedules_destroy_url
    assert_response :success
  end

end

require 'test_helper'

class MyfestipalControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get myfestipal_create_url
    assert_response :success
  end

  test "should get show" do
    get myfestipal_show_url
    assert_response :success
  end

  test "should get update" do
    get myfestipal_update_url
    assert_response :success
  end

  test "should get destroy" do
    get myfestipal_destroy_url
    assert_response :success
  end

  test "should get index" do
    get myfestipal_index_url
    assert_response :success
  end

  test "should get edit" do
    get myfestipal_edit_url
    assert_response :success
  end

end

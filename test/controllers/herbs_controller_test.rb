require "test_helper"

class HerbsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get herbs_index_url
    assert_response :success
  end

  test "should get show" do
    get herbs_show_url
    assert_response :success
  end

  test "should get new" do
    get herbs_new_url
    assert_response :success
  end

  test "should get create" do
    get herbs_create_url
    assert_response :success
  end

  test "should get edit" do
    get herbs_edit_url
    assert_response :success
  end

  test "should get update" do
    get herbs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get herbs_destroy_url
    assert_response :success
  end
end

require 'test_helper'

class DosesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get doses_index_url
    assert_response :success
  end

  test "should get create" do
    get doses_create_url
    assert_response :success
  end

  test "should get new" do
    get doses_new_url
    assert_response :success
  end

  test "should get edit" do
    get doses_edit_url
    assert_response :success
  end

  test "should get show" do
    get doses_show_url
    assert_response :success
  end

  test "should get update" do
    get doses_update_url
    assert_response :success
  end

  test "should get destroy" do
    get doses_destroy_url
    assert_response :success
  end

end

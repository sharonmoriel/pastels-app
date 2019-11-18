require 'test_helper'

class PastelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pastels_index_url
    assert_response :success
  end

  test "should get new" do
    get pastels_new_url
    assert_response :success
  end

  test "should get create" do
    get pastels_create_url
    assert_response :success
  end

  test "should get show" do
    get pastels_show_url
    assert_response :success
  end

  test "should get edit" do
    get pastels_edit_url
    assert_response :success
  end

  test "should get update" do
    get pastels_update_url
    assert_response :success
  end

  test "should get destroy" do
    get pastels_destroy_url
    assert_response :success
  end

end

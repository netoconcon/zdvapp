require 'test_helper'

class ConflictsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get conflicts_index_url
    assert_response :success
  end

  test "should get show" do
    get conflicts_show_url
    assert_response :success
  end

  test "should get new" do
    get conflicts_new_url
    assert_response :success
  end

  test "should get create" do
    get conflicts_create_url
    assert_response :success
  end

  test "should get edit" do
    get conflicts_edit_url
    assert_response :success
  end

  test "should get update" do
    get conflicts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get conflicts_destroy_url
    assert_response :success
  end

end

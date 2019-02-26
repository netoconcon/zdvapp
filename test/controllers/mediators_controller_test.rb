require 'test_helper'

class MediatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mediators_index_url
    assert_response :success
  end

  test "should get show" do
    get mediators_show_url
    assert_response :success
  end

  test "should get new" do
    get mediators_new_url
    assert_response :success
  end

  test "should get create" do
    get mediators_create_url
    assert_response :success
  end

  test "should get edit" do
    get mediators_edit_url
    assert_response :success
  end

  test "should get update" do
    get mediators_update_url
    assert_response :success
  end

  test "should get destroy" do
    get mediators_destroy_url
    assert_response :success
  end

end

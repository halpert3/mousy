require 'test_helper'

class SqueaksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get squeaks_index_url
    assert_response :success
  end

  test "should get new" do
    get squeaks_new_url
    assert_response :success
  end

  test "should get edit" do
    get squeaks_edit_url
    assert_response :success
  end

  test "should get show" do
    get squeaks_show_url
    assert_response :success
  end

end

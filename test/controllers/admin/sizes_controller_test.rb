require "test_helper"

class Admin::SizesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_sizes_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_sizes_edit_url
    assert_response :success
  end
end

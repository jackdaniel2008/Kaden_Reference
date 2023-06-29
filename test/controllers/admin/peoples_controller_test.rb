require "test_helper"

class Admin::PeoplesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_peoples_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_peoples_edit_url
    assert_response :success
  end
end

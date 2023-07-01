require "test_helper"

class Public::PeoplesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_peoples_index_url
    assert_response :success
  end
end

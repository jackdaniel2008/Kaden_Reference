require "test_helper"

class Public::MakersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_makers_index_url
    assert_response :success
  end
end

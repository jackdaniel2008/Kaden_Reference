require "test_helper"

class Public::SizesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_sizes_index_url
    assert_response :success
  end
end

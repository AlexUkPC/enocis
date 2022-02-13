require "test_helper"

class ServiciiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get servicii_index_url
    assert_response :success
  end
end

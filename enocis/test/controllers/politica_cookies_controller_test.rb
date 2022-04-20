require "test_helper"

class PoliticaCookiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get politica_cookies_index_url
    assert_response :success
  end
end

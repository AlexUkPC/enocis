require "test_helper"

class PoliticaConfidentialitateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get politica_confidentialitate_index_url
    assert_response :success
  end
end

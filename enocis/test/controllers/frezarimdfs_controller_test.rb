require "test_helper"

class FrezarimdfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frezarimdf = frezarimdfs(:one)
  end

  test "should get index" do
    get frezarimdfs_url
    assert_response :success
  end

  test "should get new" do
    get new_frezarimdf_url
    assert_response :success
  end

  test "should create frezarimdf" do
    assert_difference('Frezarimdf.count') do
      post frezarimdfs_url, params: { frezarimdf: { name: @frezarimdf.name } }
    end

    assert_redirected_to frezarimdf_url(Frezarimdf.last)
  end

  test "should show frezarimdf" do
    get frezarimdf_url(@frezarimdf)
    assert_response :success
  end

  test "should get edit" do
    get edit_frezarimdf_url(@frezarimdf)
    assert_response :success
  end

  test "should update frezarimdf" do
    patch frezarimdf_url(@frezarimdf), params: { frezarimdf: { name: @frezarimdf.name } }
    assert_redirected_to frezarimdf_url(@frezarimdf)
  end

  test "should destroy frezarimdf" do
    assert_difference('Frezarimdf.count', -1) do
      delete frezarimdf_url(@frezarimdf)
    end

    assert_redirected_to frezarimdfs_url
  end
end

require "test_helper"

class FrezarimdfCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frezarimdf_category = frezarimdf_categories(:one)
  end

  test "should get index" do
    get frezarimdf_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_frezarimdf_category_url
    assert_response :success
  end

  test "should create frezarimdf_category" do
    assert_difference('FrezarimdfCategory.count') do
      post frezarimdf_categories_url, params: { frezarimdf_category: { data_icon: @frezarimdf_category.data_icon, name: @frezarimdf_category.name } }
    end

    assert_redirected_to frezarimdf_category_url(FrezarimdfCategory.last)
  end

  test "should show frezarimdf_category" do
    get frezarimdf_category_url(@frezarimdf_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_frezarimdf_category_url(@frezarimdf_category)
    assert_response :success
  end

  test "should update frezarimdf_category" do
    patch frezarimdf_category_url(@frezarimdf_category), params: { frezarimdf_category: { data_icon: @frezarimdf_category.data_icon, name: @frezarimdf_category.name } }
    assert_redirected_to frezarimdf_category_url(@frezarimdf_category)
  end

  test "should destroy frezarimdf_category" do
    assert_difference('FrezarimdfCategory.count', -1) do
      delete frezarimdf_category_url(@frezarimdf_category)
    end

    assert_redirected_to frezarimdf_categories_url
  end
end

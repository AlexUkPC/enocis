require "application_system_test_case"

class FrezarimdfCategoriesTest < ApplicationSystemTestCase
  setup do
    @frezarimdf_category = frezarimdf_categories(:one)
  end

  test "visiting the index" do
    visit frezarimdf_categories_url
    assert_selector "h1", text: "Frezarimdf Categories"
  end

  test "creating a Frezarimdf category" do
    visit frezarimdf_categories_url
    click_on "New Frezarimdf Category"

    fill_in "Data icon", with: @frezarimdf_category.data_icon
    fill_in "Name", with: @frezarimdf_category.name
    click_on "Create Frezarimdf category"

    assert_text "Frezarimdf category was successfully created"
    click_on "Back"
  end

  test "updating a Frezarimdf category" do
    visit frezarimdf_categories_url
    click_on "Edit", match: :first

    fill_in "Data icon", with: @frezarimdf_category.data_icon
    fill_in "Name", with: @frezarimdf_category.name
    click_on "Update Frezarimdf category"

    assert_text "Frezarimdf category was successfully updated"
    click_on "Back"
  end

  test "destroying a Frezarimdf category" do
    visit frezarimdf_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Frezarimdf category was successfully destroyed"
  end
end

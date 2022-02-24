require "application_system_test_case"

class FrezarimdfsTest < ApplicationSystemTestCase
  setup do
    @frezarimdf = frezarimdfs(:one)
  end

  test "visiting the index" do
    visit frezarimdfs_url
    assert_selector "h1", text: "Frezarimdfs"
  end

  test "creating a Frezarimdf" do
    visit frezarimdfs_url
    click_on "New Frezarimdf"

    fill_in "Name", with: @frezarimdf.name
    click_on "Create Frezarimdf"

    assert_text "Frezarimdf was successfully created"
    click_on "Back"
  end

  test "updating a Frezarimdf" do
    visit frezarimdfs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @frezarimdf.name
    click_on "Update Frezarimdf"

    assert_text "Frezarimdf was successfully updated"
    click_on "Back"
  end

  test "destroying a Frezarimdf" do
    visit frezarimdfs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Frezarimdf was successfully destroyed"
  end
end

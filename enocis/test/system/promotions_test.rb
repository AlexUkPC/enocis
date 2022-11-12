require "application_system_test_case"

class PromotionsTest < ApplicationSystemTestCase
  setup do
    @promotion = promotions(:one)
  end

  test "visiting the index" do
    visit promotions_url
    assert_selector "h1", text: "Promotions"
  end

  test "creating a Promotion" do
    visit promotions_url
    click_on "New Promotion"

    fill_in "Bg color", with: @promotion.bg_color
    fill_in "Btn text", with: @promotion.btn_text
    fill_in "Btn url", with: @promotion.btn_url
    fill_in "End date", with: @promotion.end_date
    check "Is active" if @promotion.is_active
    fill_in "Start date", with: @promotion.start_date
    fill_in "Title", with: @promotion.title
    fill_in "Title color", with: @promotion.title_color
    click_on "Create Promotion"

    assert_text "Promotion was successfully created"
    click_on "Back"
  end

  test "updating a Promotion" do
    visit promotions_url
    click_on "Edit", match: :first

    fill_in "Bg color", with: @promotion.bg_color
    fill_in "Btn text", with: @promotion.btn_text
    fill_in "Btn url", with: @promotion.btn_url
    fill_in "End date", with: @promotion.end_date
    check "Is active" if @promotion.is_active
    fill_in "Start date", with: @promotion.start_date
    fill_in "Title", with: @promotion.title
    fill_in "Title color", with: @promotion.title_color
    click_on "Update Promotion"

    assert_text "Promotion was successfully updated"
    click_on "Back"
  end

  test "destroying a Promotion" do
    visit promotions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Promotion was successfully destroyed"
  end
end

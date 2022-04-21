require "application_system_test_case"

class SocialProjectsTest < ApplicationSystemTestCase
  setup do
    @social_project = social_projects(:one)
  end

  test "visiting the index" do
    visit social_projects_url
    assert_selector "h1", text: "Social Projects"
  end

  test "creating a Social project" do
    visit social_projects_url
    click_on "New Social Project"

    fill_in "Title", with: @social_project.title
    click_on "Create Social project"

    assert_text "Social project was successfully created"
    click_on "Back"
  end

  test "updating a Social project" do
    visit social_projects_url
    click_on "Edit", match: :first

    fill_in "Title", with: @social_project.title
    click_on "Update Social project"

    assert_text "Social project was successfully updated"
    click_on "Back"
  end

  test "destroying a Social project" do
    visit social_projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Social project was successfully destroyed"
  end
end

require "test_helper"

class SocialProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_project = social_projects(:one)
  end

  test "should get index" do
    get social_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_social_project_url
    assert_response :success
  end

  test "should create social_project" do
    assert_difference('SocialProject.count') do
      post social_projects_url, params: { social_project: { title: @social_project.title } }
    end

    assert_redirected_to social_project_url(SocialProject.last)
  end

  test "should show social_project" do
    get social_project_url(@social_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_social_project_url(@social_project)
    assert_response :success
  end

  test "should update social_project" do
    patch social_project_url(@social_project), params: { social_project: { title: @social_project.title } }
    assert_redirected_to social_project_url(@social_project)
  end

  test "should destroy social_project" do
    assert_difference('SocialProject.count', -1) do
      delete social_project_url(@social_project)
    end

    assert_redirected_to social_projects_url
  end
end

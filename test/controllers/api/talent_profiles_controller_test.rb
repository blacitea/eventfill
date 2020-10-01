require 'test_helper'

class API::TalentProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_talent_profiles_index_url
    assert_response :success
  end

  test "should get show" do
    get api_talent_profiles_show_url
    assert_response :success
  end

  test "should get new" do
    get api_talent_profiles_new_url
    assert_response :success
  end

  test "should get create" do
    get api_talent_profiles_create_url
    assert_response :success
  end

  test "should get edit" do
    get api_talent_profiles_edit_url
    assert_response :success
  end

  test "should get update" do
    get api_talent_profiles_update_url
    assert_response :success
  end

end

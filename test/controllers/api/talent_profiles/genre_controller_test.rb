require 'test_helper'

class API::TalentProfiles::GenreControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_talent_profiles_genre_show_url
    assert_response :success
  end

end

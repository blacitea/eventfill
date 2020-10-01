# frozen_string_literal: true

require 'test_helper'

module API
  module TalentProfiles
    class GenreControllerTest < ActionDispatch::IntegrationTest
      test 'should get show' do
        get api_talent_profiles_genre_show_url
        assert_response :success
      end
    end
  end
end

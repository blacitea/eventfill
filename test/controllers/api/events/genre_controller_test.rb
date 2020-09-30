# frozen_string_literal: true

require 'test_helper'

class Api::Events::GenreControllerTest < ActionDispatch::IntegrationTest
  test 'should get show' do
    get api_events_genre_show_url
    assert_response :success
  end
end

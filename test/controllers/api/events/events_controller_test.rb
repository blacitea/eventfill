# frozen_string_literal: true

require 'test_helper'

class Api::Events::EventsControllerTest < ActionDispatch::IntegrationTest
  test 'should get show' do
    get api_events_events_show_url
    assert_response :success
  end
end

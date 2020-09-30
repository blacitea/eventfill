# frozen_string_literal: true

require 'test_helper'

module Api
  module Events
    class EventsControllerTest < ActionDispatch::IntegrationTest
      test 'should get show' do
        get api_events_events_show_url
        assert_response :success
      end
    end
  end
end

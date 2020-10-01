# frozen_string_literal: true

require 'test_helper'

module API
  class EventsControllerTest < ActionDispatch::IntegrationTest
    test 'should get edit' do
      get api_events_edit_url
      assert_response :success
    end

    test 'should get show' do
      get api_events_show_url
      assert_response :success
    end

    test 'should get create' do
      get api_events_create_url
      assert_response :success
    end

    test 'should get update' do
      get api_events_update_url
      assert_response :success
    end

    test 'should get new' do
      get api_events_new_url
      assert_response :success
    end
  end
end

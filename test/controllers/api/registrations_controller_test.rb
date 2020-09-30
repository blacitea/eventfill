# frozen_string_literal: true

require 'test_helper'

module API
  class RegistrationsControllerTest < ActionDispatch::IntegrationTest
    test 'should get index' do
      get api_registrations_index_url
      assert_response :success
    end

    test 'should get show' do
      get api_registrations_show_url
      assert_response :success
    end
  end
end

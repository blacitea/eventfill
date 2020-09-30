require 'test_helper'

class Api::Events::LocationControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_events_location_show_url
    assert_response :success
  end

end

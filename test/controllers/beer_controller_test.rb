require 'test_helper'

class BeerControllerTest < ActionDispatch::IntegrationTest
  test "should get beer_type" do
    get beer_beer_type_url
    assert_response :success
  end

end

require 'test_helper'

class NamesControllerTest < ActionController::TestCase
  test "should get favorite" do
    get :favorite
    assert_response :success
  end

end

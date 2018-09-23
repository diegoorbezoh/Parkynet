require 'test_helper'

class CommentParkingControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get comment_parking_view_url
    assert_response :success
  end

end

require 'test_helper'

class PostImageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get post_image_index_url
    assert_response :success
  end

end

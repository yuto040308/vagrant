require 'test_helper'

class PostImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get post_images_index_url
    assert_response :success
  end

end

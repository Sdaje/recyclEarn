require "test_helper"

class InterestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get interests_index_url
    assert_response :success
  end

  test "should get search" do
    get interests_search_url
    assert_response :success
  end
end

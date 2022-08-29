require "test_helper"

class LearningsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get learnings_index_url
    assert_response :success
  end

  test "should get search" do
    get learnings_search_url
    assert_response :success
  end

  test "should get show" do
    get learnings_show_url
    assert_response :success
  end
end

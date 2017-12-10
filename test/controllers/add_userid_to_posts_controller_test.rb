require 'test_helper'

class AddUseridToPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_userid_to_post = add_userid_to_posts(:one)
  end

  test "should get index" do
    get add_userid_to_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_add_userid_to_post_url
    assert_response :success
  end

  test "should create add_userid_to_post" do
    assert_difference('AddUseridToPost.count') do
      post add_userid_to_posts_url, params: { add_userid_to_post: { user_id: @add_userid_to_post.user_id } }
    end

    assert_redirected_to add_userid_to_post_url(AddUseridToPost.last)
  end

  test "should show add_userid_to_post" do
    get add_userid_to_post_url(@add_userid_to_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_userid_to_post_url(@add_userid_to_post)
    assert_response :success
  end

  test "should update add_userid_to_post" do
    patch add_userid_to_post_url(@add_userid_to_post), params: { add_userid_to_post: { user_id: @add_userid_to_post.user_id } }
    assert_redirected_to add_userid_to_post_url(@add_userid_to_post)
  end

  test "should destroy add_userid_to_post" do
    assert_difference('AddUseridToPost.count', -1) do
      delete add_userid_to_post_url(@add_userid_to_post)
    end

    assert_redirected_to add_userid_to_posts_url
  end
end

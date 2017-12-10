require 'test_helper'

class AddUseridToCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_userid_to_comment = add_userid_to_comments(:one)
  end

  test "should get index" do
    get add_userid_to_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_add_userid_to_comment_url
    assert_response :success
  end

  test "should create add_userid_to_comment" do
    assert_difference('AddUseridToComment.count') do
      post add_userid_to_comments_url, params: { add_userid_to_comment: { user_id: @add_userid_to_comment.user_id } }
    end

    assert_redirected_to add_userid_to_comment_url(AddUseridToComment.last)
  end

  test "should show add_userid_to_comment" do
    get add_userid_to_comment_url(@add_userid_to_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_userid_to_comment_url(@add_userid_to_comment)
    assert_response :success
  end

  test "should update add_userid_to_comment" do
    patch add_userid_to_comment_url(@add_userid_to_comment), params: { add_userid_to_comment: { user_id: @add_userid_to_comment.user_id } }
    assert_redirected_to add_userid_to_comment_url(@add_userid_to_comment)
  end

  test "should destroy add_userid_to_comment" do
    assert_difference('AddUseridToComment.count', -1) do
      delete add_userid_to_comment_url(@add_userid_to_comment)
    end

    assert_redirected_to add_userid_to_comments_url
  end
end

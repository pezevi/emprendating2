require 'test_helper'

class IdeaLikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @idea_like = idea_likes(:one)
  end

  test "should get index" do
    get idea_likes_url
    assert_response :success
  end

  test "should get new" do
    get new_idea_like_url
    assert_response :success
  end

  test "should create idea_like" do
    assert_difference('IdeaLike.count') do
      post idea_likes_url, params: { idea_like: { idea_id: @idea_like.idea_id, liked: @idea_like.liked, user_id: @idea_like.user_id } }
    end

    assert_redirected_to idea_like_url(IdeaLike.last)
  end

  test "should show idea_like" do
    get idea_like_url(@idea_like)
    assert_response :success
  end

  test "should get edit" do
    get edit_idea_like_url(@idea_like)
    assert_response :success
  end

  test "should update idea_like" do
    patch idea_like_url(@idea_like), params: { idea_like: { idea_id: @idea_like.idea_id, liked: @idea_like.liked, user_id: @idea_like.user_id } }
    assert_redirected_to idea_like_url(@idea_like)
  end

  test "should destroy idea_like" do
    assert_difference('IdeaLike.count', -1) do
      delete idea_like_url(@idea_like)
    end

    assert_redirected_to idea_likes_url
  end
end

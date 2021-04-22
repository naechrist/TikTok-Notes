require 'test_helper'

class TikToksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tik_tok = tik_toks(:one)
  end

  test "should get index" do
    get tik_toks_url
    assert_response :success
  end

  test "should get new" do
    get new_tik_tok_url
    assert_response :success
  end

  test "should create tik_tok" do
    assert_difference('TikTok.count') do
      post tik_toks_url, params: { tik_tok: { category_id: @tik_tok.category_id, description: @tik_tok.description, favorite: @tik_tok.favorite, link: @tik_tok.link, user_id: @tik_tok.user_id } }
    end

    assert_redirected_to tik_tok_url(TikTok.last)
  end

  test "should show tik_tok" do
    get tik_tok_url(@tik_tok)
    assert_response :success
  end

  test "should get edit" do
    get edit_tik_tok_url(@tik_tok)
    assert_response :success
  end

  test "should update tik_tok" do
    patch tik_tok_url(@tik_tok), params: { tik_tok: { category_id: @tik_tok.category_id, description: @tik_tok.description, favorite: @tik_tok.favorite, link: @tik_tok.link, user_id: @tik_tok.user_id } }
    assert_redirected_to tik_tok_url(@tik_tok)
  end

  test "should destroy tik_tok" do
    assert_difference('TikTok.count', -1) do
      delete tik_tok_url(@tik_tok)
    end

    assert_redirected_to tik_toks_url
  end
end

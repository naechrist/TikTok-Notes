require "application_system_test_case"

class TikToksTest < ApplicationSystemTestCase
  setup do
    @tik_tok = tik_toks(:one)
  end

  test "visiting the index" do
    visit tik_toks_url
    assert_selector "h1", text: "Tik Toks"
  end

  test "creating a Tik tok" do
    visit tik_toks_url
    click_on "New Tik Tok"

    fill_in "Category", with: @tik_tok.category_id
    fill_in "Description", with: @tik_tok.description
    check "Favorite" if @tik_tok.favorite
    fill_in "Link", with: @tik_tok.link
    fill_in "User", with: @tik_tok.user_id
    click_on "Create Tik tok"

    assert_text "Tik tok was successfully created"
    click_on "Back"
  end

  test "updating a Tik tok" do
    visit tik_toks_url
    click_on "Edit", match: :first

    fill_in "Category", with: @tik_tok.category_id
    fill_in "Description", with: @tik_tok.description
    check "Favorite" if @tik_tok.favorite
    fill_in "Link", with: @tik_tok.link
    fill_in "User", with: @tik_tok.user_id
    click_on "Update Tik tok"

    assert_text "Tik tok was successfully updated"
    click_on "Back"
  end

  test "destroying a Tik tok" do
    visit tik_toks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tik tok was successfully destroyed"
  end
end

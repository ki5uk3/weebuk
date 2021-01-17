require "application_system_test_case"

class KonvesTest < ApplicationSystemTestCase
  setup do
    @konfe = konves(:one)
  end

  test "visiting the index" do
    visit konves_url
    assert_selector "h1", text: "Konves"
  end

  test "creating a Konfe" do
    visit konves_url
    click_on "New Konfe"

    fill_in "Age", with: @konfe.age
    fill_in "Insta uname", with: @konfe.insta_uname
    fill_in "Name", with: @konfe.name
    fill_in "Quote", with: @konfe.quote
    fill_in "Snap uname", with: @konfe.snap_uname
    click_on "Create Konfe"

    assert_text "Konfe was successfully created"
    click_on "Back"
  end

  test "updating a Konfe" do
    visit konves_url
    click_on "Edit", match: :first

    fill_in "Age", with: @konfe.age
    fill_in "Insta uname", with: @konfe.insta_uname
    fill_in "Name", with: @konfe.name
    fill_in "Quote", with: @konfe.quote
    fill_in "Snap uname", with: @konfe.snap_uname
    click_on "Update Konfe"

    assert_text "Konfe was successfully updated"
    click_on "Back"
  end

  test "destroying a Konfe" do
    visit konves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Konfe was successfully destroyed"
  end
end

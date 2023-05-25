require "application_system_test_case"

class BlazerAndJacketsTest < ApplicationSystemTestCase
  setup do
    @blazer_and_jacket = blazer_and_jackets(:one)
  end

  test "visiting the index" do
    visit blazer_and_jackets_url
    assert_selector "h1", text: "Blazer and jackets"
  end

  test "should create blazer and jacket" do
    visit blazer_and_jackets_url
    click_on "New blazer and jacket"

    fill_in "Description", with: @blazer_and_jacket.Description
    fill_in "Fullname", with: @blazer_and_jacket.Fullname
    fill_in "Price", with: @blazer_and_jacket.Price
    fill_in "Quantity", with: @blazer_and_jacket.Quantity
    fill_in "Url", with: @blazer_and_jacket.Url
    click_on "Create Blazer and jacket"

    assert_text "Blazer and jacket was successfully created"
    click_on "Back"
  end

  test "should update Blazer and jacket" do
    visit blazer_and_jacket_url(@blazer_and_jacket)
    click_on "Edit this blazer and jacket", match: :first

    fill_in "Description", with: @blazer_and_jacket.Description
    fill_in "Fullname", with: @blazer_and_jacket.Fullname
    fill_in "Price", with: @blazer_and_jacket.Price
    fill_in "Quantity", with: @blazer_and_jacket.Quantity
    fill_in "Url", with: @blazer_and_jacket.Url
    click_on "Update Blazer and jacket"

    assert_text "Blazer and jacket was successfully updated"
    click_on "Back"
  end

  test "should destroy Blazer and jacket" do
    visit blazer_and_jacket_url(@blazer_and_jacket)
    click_on "Destroy this blazer and jacket", match: :first

    assert_text "Blazer and jacket was successfully destroyed"
  end
end

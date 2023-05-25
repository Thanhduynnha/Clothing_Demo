require "application_system_test_case"

class BlazersTest < ApplicationSystemTestCase
  setup do
    @blazer = blazers(:one)
  end

  test "visiting the index" do
    visit blazers_url
    assert_selector "h1", text: "Blazers"
  end

  test "should create blazer" do
    visit blazers_url
    click_on "New blazer"

    click_on "Create Blazer"

    assert_text "Blazer was successfully created"
    click_on "Back"
  end

  test "should update Blazer" do
    visit blazer_url(@blazer)
    click_on "Edit this blazer", match: :first

    click_on "Update Blazer"

    assert_text "Blazer was successfully updated"
    click_on "Back"
  end

  test "should destroy Blazer" do
    visit blazer_url(@blazer)
    click_on "Destroy this blazer", match: :first

    assert_text "Blazer was successfully destroyed"
  end
end

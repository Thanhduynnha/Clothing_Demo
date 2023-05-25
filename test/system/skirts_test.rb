require "application_system_test_case"

class SkirtsTest < ApplicationSystemTestCase
  setup do
    @skirt = skirts(:one)
  end

  test "visiting the index" do
    visit skirts_url
    assert_selector "h1", text: "Skirts"
  end

  test "should create skirt" do
    visit skirts_url
    click_on "New skirt"

    fill_in "Description", with: @skirt.Description
    fill_in "Fullname", with: @skirt.Fullname
    fill_in "Price", with: @skirt.Price
    fill_in "Quantity", with: @skirt.Quantity
    fill_in "Url", with: @skirt.Url
    click_on "Create Skirt"

    assert_text "Skirt was successfully created"
    click_on "Back"
  end

  test "should update Skirt" do
    visit skirt_url(@skirt)
    click_on "Edit this skirt", match: :first

    fill_in "Description", with: @skirt.Description
    fill_in "Fullname", with: @skirt.Fullname
    fill_in "Price", with: @skirt.Price
    fill_in "Quantity", with: @skirt.Quantity
    fill_in "Url", with: @skirt.Url
    click_on "Update Skirt"

    assert_text "Skirt was successfully updated"
    click_on "Back"
  end

  test "should destroy Skirt" do
    visit skirt_url(@skirt)
    click_on "Destroy this skirt", match: :first

    assert_text "Skirt was successfully destroyed"
  end
end

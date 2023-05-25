require "application_system_test_case"

class SourceOfSuppliesTest < ApplicationSystemTestCase
  setup do
    @source_of_supply = source_of_supplies(:one)
  end

  test "visiting the index" do
    visit source_of_supplies_url
    assert_selector "h1", text: "Source of supplies"
  end

  test "should create source of supply" do
    visit source_of_supplies_url
    click_on "New source of supply"

    fill_in "Address", with: @source_of_supply.Address
    fill_in "Email", with: @source_of_supply.Email
    fill_in "Fullname", with: @source_of_supply.Fullname
    fill_in "Phonenumber", with: @source_of_supply.Phonenumber
    fill_in "S id", with: @source_of_supply.S_ID
    click_on "Create Source of supply"

    assert_text "Source of supply was successfully created"
    click_on "Back"
  end

  test "should update Source of supply" do
    visit source_of_supply_url(@source_of_supply)
    click_on "Edit this source of supply", match: :first

    fill_in "Address", with: @source_of_supply.Address
    fill_in "Email", with: @source_of_supply.Email
    fill_in "Fullname", with: @source_of_supply.Fullname
    fill_in "Phonenumber", with: @source_of_supply.Phonenumber
    fill_in "S id", with: @source_of_supply.S_ID
    click_on "Update Source of supply"

    assert_text "Source of supply was successfully updated"
    click_on "Back"
  end

  test "should destroy Source of supply" do
    visit source_of_supply_url(@source_of_supply)
    click_on "Destroy this source of supply", match: :first

    assert_text "Source of supply was successfully destroyed"
  end
end

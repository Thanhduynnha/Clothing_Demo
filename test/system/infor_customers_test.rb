require "application_system_test_case"

class InforCustomersTest < ApplicationSystemTestCase
  setup do
    @infor_customer = infor_customers(:one)
  end

  test "visiting the index" do
    visit infor_customers_url
    assert_selector "h1", text: "Infor customers"
  end

  test "should create infor customer" do
    visit infor_customers_url
    click_on "New infor customer"

    fill_in "Address", with: @infor_customer.Address
    fill_in "Dob", with: @infor_customer.Dob
    fill_in "Name cus", with: @infor_customer.Name_cus
    fill_in "Phonenumber", with: @infor_customer.Phonenumber
    fill_in "Point", with: @infor_customer.Point
    click_on "Create Infor customer"

    assert_text "Infor customer was successfully created"
    click_on "Back"
  end

  test "should update Infor customer" do
    visit infor_customer_url(@infor_customer)
    click_on "Edit this infor customer", match: :first

    fill_in "Address", with: @infor_customer.Address
    fill_in "Dob", with: @infor_customer.Dob
    fill_in "Name cus", with: @infor_customer.Name_cus
    fill_in "Phonenumber", with: @infor_customer.Phonenumber
    fill_in "Point", with: @infor_customer.Point
    click_on "Update Infor customer"

    assert_text "Infor customer was successfully updated"
    click_on "Back"
  end

  test "should destroy Infor customer" do
    visit infor_customer_url(@infor_customer)
    click_on "Destroy this infor customer", match: :first

    assert_text "Infor customer was successfully destroyed"
  end
end

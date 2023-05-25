require "test_helper"

class SourceOfSuppliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @source_of_supply = source_of_supplies(:one)
  end

  test "should get index" do
    get source_of_supplies_url
    assert_response :success
  end

  test "should get new" do
    get new_source_of_supply_url
    assert_response :success
  end

  test "should create source_of_supply" do
    assert_difference("SourceOfSupply.count") do
      post source_of_supplies_url, params: { source_of_supply: { Address: @source_of_supply.Address, Email: @source_of_supply.Email, Fullname: @source_of_supply.Fullname, Phonenumber: @source_of_supply.Phonenumber, S_ID: @source_of_supply.S_ID } }
    end

    assert_redirected_to source_of_supply_url(SourceOfSupply.last)
  end

  test "should show source_of_supply" do
    get source_of_supply_url(@source_of_supply)
    assert_response :success
  end

  test "should get edit" do
    get edit_source_of_supply_url(@source_of_supply)
    assert_response :success
  end

  test "should update source_of_supply" do
    patch source_of_supply_url(@source_of_supply), params: { source_of_supply: { Address: @source_of_supply.Address, Email: @source_of_supply.Email, Fullname: @source_of_supply.Fullname, Phonenumber: @source_of_supply.Phonenumber, S_ID: @source_of_supply.S_ID } }
    assert_redirected_to source_of_supply_url(@source_of_supply)
  end

  test "should destroy source_of_supply" do
    assert_difference("SourceOfSupply.count", -1) do
      delete source_of_supply_url(@source_of_supply)
    end

    assert_redirected_to source_of_supplies_url
  end
end

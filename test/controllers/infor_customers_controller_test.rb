require "test_helper"

class InforCustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @infor_customer = infor_customers(:one)
  end

  test "should get index" do
    get infor_customers_url
    assert_response :success
  end

  test "should get new" do
    get new_infor_customer_url
    assert_response :success
  end

  test "should create infor_customer" do
    assert_difference("InforCustomer.count") do
      post infor_customers_url, params: { infor_customer: { Address: @infor_customer.Address, Dob: @infor_customer.Dob, Name_cus: @infor_customer.Name_cus, Phonenumber: @infor_customer.Phonenumber, Point: @infor_customer.Point } }
    end

    assert_redirected_to infor_customer_url(InforCustomer.last)
  end

  test "should show infor_customer" do
    get infor_customer_url(@infor_customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_infor_customer_url(@infor_customer)
    assert_response :success
  end

  test "should update infor_customer" do
    patch infor_customer_url(@infor_customer), params: { infor_customer: { Address: @infor_customer.Address, Dob: @infor_customer.Dob, Name_cus: @infor_customer.Name_cus, Phonenumber: @infor_customer.Phonenumber, Point: @infor_customer.Point } }
    assert_redirected_to infor_customer_url(@infor_customer)
  end

  test "should destroy infor_customer" do
    assert_difference("InforCustomer.count", -1) do
      delete infor_customer_url(@infor_customer)
    end

    assert_redirected_to infor_customers_url
  end
end

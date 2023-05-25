require "test_helper"

class BlazerAndJacketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blazer_and_jacket = blazer_and_jackets(:one)
  end

  test "should get index" do
    get blazer_and_jackets_url
    assert_response :success
  end

  test "should get new" do
    get new_blazer_and_jacket_url
    assert_response :success
  end

  test "should create blazer_and_jacket" do
    assert_difference("BlazerAndJacket.count") do
      post blazer_and_jackets_url, params: { blazer_and_jacket: { Description: @blazer_and_jacket.Description, Fullname: @blazer_and_jacket.Fullname, Price: @blazer_and_jacket.Price, Quantity: @blazer_and_jacket.Quantity, Url: @blazer_and_jacket.Url } }
    end

    assert_redirected_to blazer_and_jacket_url(BlazerAndJacket.last)
  end

  test "should show blazer_and_jacket" do
    get blazer_and_jacket_url(@blazer_and_jacket)
    assert_response :success
  end

  test "should get edit" do
    get edit_blazer_and_jacket_url(@blazer_and_jacket)
    assert_response :success
  end

  test "should update blazer_and_jacket" do
    patch blazer_and_jacket_url(@blazer_and_jacket), params: { blazer_and_jacket: { Description: @blazer_and_jacket.Description, Fullname: @blazer_and_jacket.Fullname, Price: @blazer_and_jacket.Price, Quantity: @blazer_and_jacket.Quantity, Url: @blazer_and_jacket.Url } }
    assert_redirected_to blazer_and_jacket_url(@blazer_and_jacket)
  end

  test "should destroy blazer_and_jacket" do
    assert_difference("BlazerAndJacket.count", -1) do
      delete blazer_and_jacket_url(@blazer_and_jacket)
    end

    assert_redirected_to blazer_and_jackets_url
  end
end

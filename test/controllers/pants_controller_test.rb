require "test_helper"

class PantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pant = pants(:one)
  end

  test "should get index" do
    get pants_url
    assert_response :success
  end

  test "should get new" do
    get new_pant_url
    assert_response :success
  end

  test "should create pant" do
    assert_difference("Pant.count") do
      post pants_url, params: { pant: { Description: @pant.Description, Fullname: @pant.Fullname, Price: @pant.Price, Quantity: @pant.Quantity, Url: @pant.Url } }
    end

    assert_redirected_to pant_url(Pant.last)
  end

  test "should show pant" do
    get pant_url(@pant)
    assert_response :success
  end

  test "should get edit" do
    get edit_pant_url(@pant)
    assert_response :success
  end

  test "should update pant" do
    patch pant_url(@pant), params: { pant: { Description: @pant.Description, Fullname: @pant.Fullname, Price: @pant.Price, Quantity: @pant.Quantity, Url: @pant.Url } }
    assert_redirected_to pant_url(@pant)
  end

  test "should destroy pant" do
    assert_difference("Pant.count", -1) do
      delete pant_url(@pant)
    end

    assert_redirected_to pants_url
  end
end

require "test_helper"

class SkirtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skirt = skirts(:one)
  end

  test "should get index" do
    get skirts_url
    assert_response :success
  end

  test "should get new" do
    get new_skirt_url
    assert_response :success
  end

  test "should create skirt" do
    assert_difference("Skirt.count") do
      post skirts_url, params: { skirt: { Description: @skirt.Description, Fullname: @skirt.Fullname, Price: @skirt.Price, Quantity: @skirt.Quantity, Url: @skirt.Url } }
    end

    assert_redirected_to skirt_url(Skirt.last)
  end

  test "should show skirt" do
    get skirt_url(@skirt)
    assert_response :success
  end

  test "should get edit" do
    get edit_skirt_url(@skirt)
    assert_response :success
  end

  test "should update skirt" do
    patch skirt_url(@skirt), params: { skirt: { Description: @skirt.Description, Fullname: @skirt.Fullname, Price: @skirt.Price, Quantity: @skirt.Quantity, Url: @skirt.Url } }
    assert_redirected_to skirt_url(@skirt)
  end

  test "should destroy skirt" do
    assert_difference("Skirt.count", -1) do
      delete skirt_url(@skirt)
    end

    assert_redirected_to skirts_url
  end
end

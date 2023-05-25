require "test_helper"

class BlazersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blazer = blazers(:one)
  end

  test "should get index" do
    get blazers_url
    assert_response :success
  end

  test "should get new" do
    get new_blazer_url
    assert_response :success
  end

  test "should create blazer" do
    assert_difference("Blazer.count") do
      post blazers_url, params: { blazer: {  } }
    end

    assert_redirected_to blazer_url(Blazer.last)
  end

  test "should show blazer" do
    get blazer_url(@blazer)
    assert_response :success
  end

  test "should get edit" do
    get edit_blazer_url(@blazer)
    assert_response :success
  end

  test "should update blazer" do
    patch blazer_url(@blazer), params: { blazer: {  } }
    assert_redirected_to blazer_url(@blazer)
  end

  test "should destroy blazer" do
    assert_difference("Blazer.count", -1) do
      delete blazer_url(@blazer)
    end

    assert_redirected_to blazers_url
  end
end

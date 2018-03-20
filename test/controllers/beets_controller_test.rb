require 'test_helper'

class BeetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beet = beets(:one)
  end

  test "should get index" do
    get beets_url
    assert_response :success
  end

  test "should get new" do
    get new_beet_url
    assert_response :success
  end

  test "should create beet" do
    assert_difference('Beet.count') do
      post beets_url, params: { beet: { body: @beet.body, title: @beet.title } }
    end

    assert_redirected_to beet_url(Beet.last)
  end

  test "should show beet" do
    get beet_url(@beet)
    assert_response :success
  end

  test "should get edit" do
    get edit_beet_url(@beet)
    assert_response :success
  end

  test "should update beet" do
    patch beet_url(@beet), params: { beet: { body: @beet.body, title: @beet.title } }
    assert_redirected_to beet_url(@beet)
  end

  test "should destroy beet" do
    assert_difference('Beet.count', -1) do
      delete beet_url(@beet)
    end

    assert_redirected_to beets_url
  end
end

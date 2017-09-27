require 'test_helper'

class MobileUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mobile_user = mobile_users(:one)
  end

  test "should get index" do
    get mobile_users_url
    assert_response :success
  end

  test "should get new" do
    get new_mobile_user_url
    assert_response :success
  end

  test "should create mobile_user" do
    assert_difference('MobileUser.count') do
      post mobile_users_url, params: { mobile_user: { email: @mobile_user.email, mobile_user_id: @mobile_user.mobile_user_id, password: @mobile_user.password, type: @mobile_user.type, username: @mobile_user.username } }
    end

    assert_redirected_to mobile_user_url(MobileUser.last)
  end

  test "should show mobile_user" do
    get mobile_user_url(@mobile_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_mobile_user_url(@mobile_user)
    assert_response :success
  end

  test "should update mobile_user" do
    patch mobile_user_url(@mobile_user), params: { mobile_user: { email: @mobile_user.email, mobile_user_id: @mobile_user.mobile_user_id, password: @mobile_user.password, type: @mobile_user.type, username: @mobile_user.username } }
    assert_redirected_to mobile_user_url(@mobile_user)
  end

  test "should destroy mobile_user" do
    assert_difference('MobileUser.count', -1) do
      delete mobile_user_url(@mobile_user)
    end

    assert_redirected_to mobile_users_url
  end
end

require 'test_helper'

class LoadToMobilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @load_to_mobile = load_to_mobiles(:one)
  end

  test "should get index" do
    get load_to_mobiles_url
    assert_response :success
  end

  test "should get new" do
    get new_load_to_mobile_url
    assert_response :success
  end

  test "should create load_to_mobile" do
    assert_difference('LoadToMobile.count') do
      post load_to_mobiles_url, params: { load_to_mobile: { accept: @load_to_mobile.accept, decline: @load_to_mobile.decline, driver_email: @load_to_mobile.driver_email, driver_user_id: @load_to_mobile.driver_user_id } }
    end

    assert_redirected_to load_to_mobile_url(LoadToMobile.last)
  end

  test "should show load_to_mobile" do
    get load_to_mobile_url(@load_to_mobile)
    assert_response :success
  end

  test "should get edit" do
    get edit_load_to_mobile_url(@load_to_mobile)
    assert_response :success
  end

  test "should update load_to_mobile" do
    patch load_to_mobile_url(@load_to_mobile), params: { load_to_mobile: { accept: @load_to_mobile.accept, decline: @load_to_mobile.decline, driver_email: @load_to_mobile.driver_email, driver_user_id: @load_to_mobile.driver_user_id } }
    assert_redirected_to load_to_mobile_url(@load_to_mobile)
  end

  test "should destroy load_to_mobile" do
    assert_difference('LoadToMobile.count', -1) do
      delete load_to_mobile_url(@load_to_mobile)
    end

    assert_redirected_to load_to_mobiles_url
  end
end

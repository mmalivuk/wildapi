require 'test_helper'

class ApIkeysControllerTest < ActionController::TestCase
  setup do
    @ap_ikey = ap_ikeys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ap_ikeys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ap_ikey" do
    assert_difference('ApIkey.count') do
      post :create, ap_ikey: { key: @ap_ikey.key, user_id: @ap_ikey.user_id }
    end

    assert_redirected_to ap_ikey_path(assigns(:ap_ikey))
  end

  test "should show ap_ikey" do
    get :show, id: @ap_ikey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ap_ikey
    assert_response :success
  end

  test "should update ap_ikey" do
    patch :update, id: @ap_ikey, ap_ikey: { key: @ap_ikey.key, user_id: @ap_ikey.user_id }
    assert_redirected_to ap_ikey_path(assigns(:ap_ikey))
  end

  test "should destroy ap_ikey" do
    assert_difference('ApIkey.count', -1) do
      delete :destroy, id: @ap_ikey
    end

    assert_redirected_to ap_ikeys_path
  end
end

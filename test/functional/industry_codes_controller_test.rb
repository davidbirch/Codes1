require 'test_helper'

class IndustryCodesControllerTest < ActionController::TestCase
  setup do
    @industry_code = industry_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:industry_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create industry_code" do
    assert_difference('IndustryCode.count') do
      post :create, industry_code: @industry_code.attributes
    end

    assert_redirected_to industry_code_path(assigns(:industry_code))
  end

  test "should show industry_code" do
    get :show, id: @industry_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @industry_code
    assert_response :success
  end

  test "should update industry_code" do
    put :update, id: @industry_code, industry_code: @industry_code.attributes
    assert_redirected_to industry_code_path(assigns(:industry_code))
  end

  test "should destroy industry_code" do
    assert_difference('IndustryCode.count', -1) do
      delete :destroy, id: @industry_code
    end

    assert_redirected_to industry_codes_path
  end
end

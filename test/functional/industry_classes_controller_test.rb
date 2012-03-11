require 'test_helper'

class IndustryClassesControllerTest < ActionController::TestCase
  setup do
    @industry_class = industry_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:industry_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create industry_class" do
    assert_difference('IndustryClass.count') do
      post :create, industry_class: @industry_class.attributes
    end

    assert_redirected_to industry_class_path(assigns(:industry_class))
  end

  test "should show industry_class" do
    get :show, id: @industry_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @industry_class
    assert_response :success
  end

  test "should update industry_class" do
    put :update, id: @industry_class, industry_class: @industry_class.attributes
    assert_redirected_to industry_class_path(assigns(:industry_class))
  end

  test "should destroy industry_class" do
    assert_difference('IndustryClass.count', -1) do
      delete :destroy, id: @industry_class
    end

    assert_redirected_to industry_classes_path
  end
end

require 'test_helper'

class FoundationsControllerTest < ActionController::TestCase
  setup do
    @foundation = foundations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foundations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foundation" do
    assert_difference('Foundation.count') do
      post :create, foundation: { email: @foundation.email, foundation_name: @foundation.foundation_name, location: @foundation.location, password: @foundation.password, username: @foundation.username, website: @foundation.website }
    end

    assert_redirected_to foundation_path(assigns(:foundation))
  end

  test "should show foundation" do
    get :show, id: @foundation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foundation
    assert_response :success
  end

  test "should update foundation" do
    patch :update, id: @foundation, foundation: { email: @foundation.email, foundation_name: @foundation.foundation_name, location: @foundation.location, password: @foundation.password, username: @foundation.username, website: @foundation.website }
    assert_redirected_to foundation_path(assigns(:foundation))
  end

  test "should destroy foundation" do
    assert_difference('Foundation.count', -1) do
      delete :destroy, id: @foundation
    end

    assert_redirected_to foundations_path
  end
end

require 'test_helper'

class PetsControllerTest < ActionController::TestCase
  setup do
    @pet = pets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pet" do
    assert_difference('Pet.count') do
      post :create, pet: { pet_age: @pet.pet_age, pet_breed: @pet.pet_breed, pet_gender: @pet.pet_gender, pet_household_match: @pet.pet_household_match, pet_name: @pet.pet_name, pet_size: @pet.pet_size, pet_special_needs: @pet.pet_special_needs, pet_type: @pet.pet_type }
    end

    assert_redirected_to pet_path(assigns(:pet))
  end

  test "should show pet" do
    get :show, id: @pet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pet
    assert_response :success
  end

  test "should update pet" do
    patch :update, id: @pet, pet: { pet_age: @pet.pet_age, pet_breed: @pet.pet_breed, pet_gender: @pet.pet_gender, pet_household_match: @pet.pet_household_match, pet_name: @pet.pet_name, pet_size: @pet.pet_size, pet_special_needs: @pet.pet_special_needs, pet_type: @pet.pet_type }
    assert_redirected_to pet_path(assigns(:pet))
  end

  test "should destroy pet" do
    assert_difference('Pet.count', -1) do
      delete :destroy, id: @pet
    end

    assert_redirected_to pets_path
  end
end

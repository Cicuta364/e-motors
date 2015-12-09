require 'test_helper'

class OtsControllerTest < ActionController::TestCase
  setup do
    @ot = ots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ot" do
    assert_difference('Ot.count') do
      post :create, ot: { brand: @ot.brand, current: @ot.current, motor_type: @ot.motor_type, oder_activities: @ot.oder_activities, power: @ot.power, serial: @ot.serial, speed: @ot.speed, voltage: @ot.voltage }
    end

    assert_redirected_to ot_path(assigns(:ot))
  end

  test "should show ot" do
    get :show, id: @ot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ot
    assert_response :success
  end

  test "should update ot" do
    patch :update, id: @ot, ot: { brand: @ot.brand, current: @ot.current, motor_type: @ot.motor_type, oder_activities: @ot.oder_activities, power: @ot.power, serial: @ot.serial, speed: @ot.speed, voltage: @ot.voltage }
    assert_redirected_to ot_path(assigns(:ot))
  end

  test "should destroy ot" do
    assert_difference('Ot.count', -1) do
      delete :destroy, id: @ot
    end

    assert_redirected_to ots_path
  end
end

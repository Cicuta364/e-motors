require 'test_helper'

class DataSheetsControllerTest < ActionController::TestCase
  setup do
    @data_sheet = data_sheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_sheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_sheet" do
    assert_difference('DataSheet.count') do
      post :create, data_sheet: { hz: @data_sheet.hz, start_date: @data_sheet.start_date }
    end

    assert_redirected_to data_sheet_path(assigns(:data_sheet))
  end

  test "should show data_sheet" do
    get :show, id: @data_sheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @data_sheet
    assert_response :success
  end

  test "should update data_sheet" do
    patch :update, id: @data_sheet, data_sheet: { hz: @data_sheet.hz, start_date: @data_sheet.start_date }
    assert_redirected_to data_sheet_path(assigns(:data_sheet))
  end

  test "should destroy data_sheet" do
    assert_difference('DataSheet.count', -1) do
      delete :destroy, id: @data_sheet
    end

    assert_redirected_to data_sheets_path
  end
end

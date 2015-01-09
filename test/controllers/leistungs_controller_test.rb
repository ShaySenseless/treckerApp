require 'test_helper'

class LeistungsControllerTest < ActionController::TestCase
  setup do
    @leistung = leistungs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leistungs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leistung" do
    assert_difference('Leistung.count') do
      post :create, leistung: { name: @leistung.name }
    end

    assert_redirected_to leistung_path(assigns(:leistung))
  end

  test "should show leistung" do
    get :show, id: @leistung
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leistung
    assert_response :success
  end

  test "should update leistung" do
    patch :update, id: @leistung, leistung: { name: @leistung.name }
    assert_redirected_to leistung_path(assigns(:leistung))
  end

  test "should destroy leistung" do
    assert_difference('Leistung.count', -1) do
      delete :destroy, id: @leistung
    end

    assert_redirected_to leistungs_path
  end
end

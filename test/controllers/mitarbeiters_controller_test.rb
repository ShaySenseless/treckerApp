require 'test_helper'

class MitarbeitersControllerTest < ActionController::TestCase
  setup do
    @mitarbeiter = mitarbeiters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mitarbeiters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mitarbeiter" do
    assert_difference('Mitarbeiter.count') do
      post :create, mitarbeiter: { az_konto: @mitarbeiter.az_konto, az_monat: @mitarbeiter.az_monat, festnetz: @mitarbeiter.festnetz, handy: @mitarbeiter.handy, nachname: @mitarbeiter.nachname, vorname: @mitarbeiter.vorname }
    end

    assert_redirected_to mitarbeiter_path(assigns(:mitarbeiter))
  end

  test "should show mitarbeiter" do
    get :show, id: @mitarbeiter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mitarbeiter
    assert_response :success
  end

  test "should update mitarbeiter" do
    patch :update, id: @mitarbeiter, mitarbeiter: { az_konto: @mitarbeiter.az_konto, az_monat: @mitarbeiter.az_monat, festnetz: @mitarbeiter.festnetz, handy: @mitarbeiter.handy, nachname: @mitarbeiter.nachname, vorname: @mitarbeiter.vorname }
    assert_redirected_to mitarbeiter_path(assigns(:mitarbeiter))
  end

  test "should destroy mitarbeiter" do
    assert_difference('Mitarbeiter.count', -1) do
      delete :destroy, id: @mitarbeiter
    end

    assert_redirected_to mitarbeiters_path
  end
end

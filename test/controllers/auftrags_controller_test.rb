require 'test_helper'

class AuftragsControllerTest < ActionController::TestCase
  setup do
    @auftrag = auftrags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auftrags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auftrag" do
    assert_difference('Auftrag.count') do
      post :create, auftrag: { bis: @auftrag.bis, kunde_id: @auftrag.kunde_id, von: @auftrag.von }
    end

    assert_redirected_to auftrag_path(assigns(:auftrag))
  end

  test "should show auftrag" do
    get :show, id: @auftrag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auftrag
    assert_response :success
  end

  test "should update auftrag" do
    patch :update, id: @auftrag, auftrag: { bis: @auftrag.bis, kunde_id: @auftrag.kunde_id, von: @auftrag.von }
    assert_redirected_to auftrag_path(assigns(:auftrag))
  end

  test "should destroy auftrag" do
    assert_difference('Auftrag.count', -1) do
      delete :destroy, id: @auftrag
    end

    assert_redirected_to auftrags_path
  end
end

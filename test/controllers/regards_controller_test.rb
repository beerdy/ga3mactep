require 'test_helper'

class RegardsControllerTest < ActionController::TestCase
  setup do
    @regard = regards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regard" do
    assert_difference('Regard.count') do
      post :create, regard: { date: @regard.date, description: @regard.description, disabled: @regard.disabled, finished: @regard.finished, image_name: @regard.image_name, image_uid: @regard.image_uid, slave: @regard.slave, sort: @regard.sort, title: @regard.title, url: @regard.url }
    end

    assert_redirected_to regard_path(assigns(:regard))
  end

  test "should show regard" do
    get :show, id: @regard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @regard
    assert_response :success
  end

  test "should update regard" do
    patch :update, id: @regard, regard: { date: @regard.date, description: @regard.description, disabled: @regard.disabled, finished: @regard.finished, image_name: @regard.image_name, image_uid: @regard.image_uid, slave: @regard.slave, sort: @regard.sort, title: @regard.title, url: @regard.url }
    assert_redirected_to regard_path(assigns(:regard))
  end

  test "should destroy regard" do
    assert_difference('Regard.count', -1) do
      delete :destroy, id: @regard
    end

    assert_redirected_to regards_path
  end
end

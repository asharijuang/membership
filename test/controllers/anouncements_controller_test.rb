require 'test_helper'

class AnouncementsControllerTest < ActionController::TestCase
  setup do
    @anouncement = anouncements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anouncements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anouncement" do
    assert_difference('Anouncement.count') do
      post :create, anouncement: { content: @anouncement.content, title: @anouncement.title }
    end

    assert_redirected_to anouncement_path(assigns(:anouncement))
  end

  test "should show anouncement" do
    get :show, id: @anouncement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anouncement
    assert_response :success
  end

  test "should update anouncement" do
    patch :update, id: @anouncement, anouncement: { content: @anouncement.content, title: @anouncement.title }
    assert_redirected_to anouncement_path(assigns(:anouncement))
  end

  test "should destroy anouncement" do
    assert_difference('Anouncement.count', -1) do
      delete :destroy, id: @anouncement
    end

    assert_redirected_to anouncements_path
  end
end

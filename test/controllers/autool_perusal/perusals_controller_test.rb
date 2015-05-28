require 'test_helper'

module AutoolPerusal
  class PerusalsControllerTest < ActionController::TestCase
    setup do
      @perusal = perusals(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:perusals)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create perusal" do
      assert_difference('Perusal.count') do
        post :create, perusal: { content: @perusal.content, title: @perusal.title }
      end

      assert_redirected_to perusal_path(assigns(:perusal))
    end

    test "should show perusal" do
      get :show, id: @perusal
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @perusal
      assert_response :success
    end

    test "should update perusal" do
      patch :update, id: @perusal, perusal: { content: @perusal.content, title: @perusal.title }
      assert_redirected_to perusal_path(assigns(:perusal))
    end

    test "should destroy perusal" do
      assert_difference('Perusal.count', -1) do
        delete :destroy, id: @perusal
      end

      assert_redirected_to perusals_path
    end
  end
end

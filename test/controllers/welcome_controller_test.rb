require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

  test "should get grupo" do
    get :grupo
    assert_response :success
  end

  test "should get features" do
    get :features
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

  test "should get precios" do
    get :precios
    assert_response :success
  end

end

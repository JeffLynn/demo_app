require 'test_helper'

class FredTestsControllerTest < ActionController::TestCase
  setup do
    @fred_test = fred_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fred_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fred_test" do
    assert_difference('FredTest.count') do
      post :create, fred_test: { content: @fred_test.content, user_id: @fred_test.user_id }
    end

    assert_redirected_to fred_test_path(assigns(:fred_test))
  end

  test "should show fred_test" do
    get :show, id: @fred_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fred_test
    assert_response :success
  end

  test "should update fred_test" do
    put :update, id: @fred_test, fred_test: { content: @fred_test.content, user_id: @fred_test.user_id }
    assert_redirected_to fred_test_path(assigns(:fred_test))
  end

  test "should destroy fred_test" do
    assert_difference('FredTest.count', -1) do
      delete :destroy, id: @fred_test
    end

    assert_redirected_to fred_tests_path
  end
end

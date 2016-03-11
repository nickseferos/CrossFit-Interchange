require 'test_helper'

class FreeTrialsControllerTest < ActionController::TestCase
  setup do
    @free_trial = free_trials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:free_trials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create free_trial" do
    assert_difference('FreeTrial.count') do
      post :create, free_trial: { email: @free_trial.email, first_name: @free_trial.first_name, last_name: @free_trial.last_name, phone: @free_trial.phone }
    end

    assert_redirected_to free_trial_path(assigns(:free_trial))
  end

  test "should show free_trial" do
    get :show, id: @free_trial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @free_trial
    assert_response :success
  end

  test "should update free_trial" do
    patch :update, id: @free_trial, free_trial: { email: @free_trial.email, first_name: @free_trial.first_name, last_name: @free_trial.last_name, phone: @free_trial.phone }
    assert_redirected_to free_trial_path(assigns(:free_trial))
  end

  test "should destroy free_trial" do
    assert_difference('FreeTrial.count', -1) do
      delete :destroy, id: @free_trial
    end

    assert_redirected_to free_trials_path
  end
end

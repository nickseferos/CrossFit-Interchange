require 'test_helper'

class ConsoleControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get journal" do
    get :journal
    assert_response :success
  end

end

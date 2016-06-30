require 'test_helper'

class AnalysisControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get analysis_new_url
    assert_response :success
  end

  test "should get create" do
    get analysis_create_url
    assert_response :success
  end

  test "should get destroy" do
    get analysis_destroy_url
    assert_response :success
  end

end

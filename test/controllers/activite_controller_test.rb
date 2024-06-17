require "test_helper"

class ActiviteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get activite_index_url
    assert_response :success
  end
end

require 'test_helper'

class ReshipiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reshipi_index_url
    assert_response :success
  end

end

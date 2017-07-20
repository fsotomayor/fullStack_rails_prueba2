require 'test_helper'

class PagsControllerTest < ActionDispatch::IntegrationTest
  test "should get principal" do
    get pags_principal_url
    assert_response :success
  end

  test "should get secundaria" do
    get pags_secundaria_url
    assert_response :success
  end

end

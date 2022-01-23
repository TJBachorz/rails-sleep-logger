require 'test_helper'

class SleeplogsControllerTest < ActionDispatch::IntegrationTest
  test "the sleeplogs index" do
    get sleeplogs_url
    assert_response :success
  end

  test "sleeplog show method" do
    get sleeplogs_url(Sleeplog.first), headers: { "HTTP_REFERRER" => 
    "http://localhost:3000/sleeplogs/5"}
    assert_response :success
  end
end

require 'test_helper'

class GossipControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get gossip_new_url
    assert_response :success
  end

  test "should get create" do
    get gossip_create_url
    assert_response :success
  end

end

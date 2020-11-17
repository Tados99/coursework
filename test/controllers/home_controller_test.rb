require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_url
    assert_response :success
    assert_select 'h1', 'Hungarian Ultimate League I'
  end

  test "should get contact" do
    get home_contact_url
    assert_response :success
    assert_select 'title', 'Hungarian Ultimate League I'
    assert_select 'h1', 'Contact us!'
    assert_select 'p', 'You can contact the owners of this webpage through the form below.'
  end
end

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

  test "should post but error for field missing" do
    post request_contact_url
    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "should post request succesfully" do
    post request_contact_url, params:
    {name: "Abel Csanaki", email: "example@email.com", message: "What is going on with the League?"}
    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end
end

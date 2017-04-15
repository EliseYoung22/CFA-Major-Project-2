require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get forum" do
    get pages_forum_url
    assert_response :success
  end

  test "should get chat" do
    get pages_chat_url
    assert_response :success
  end

  test "should get professional_request" do
    get pages_professional_request_url
    assert_response :success
  end

  test "should get vouchers" do
    get pages_vouchers_url
    assert_response :success
  end

end

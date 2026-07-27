require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
 
  def setup
    @user = users(:pawel)
  end

  test "layout links" do 
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    get signup_path
    assert_equal "Signup | Ruby on Rails Tutorial Sample App", full_title("Signup")
    assert_select "a[href=?]", login_path, count: 1
    assert_select "a[href=?]", users_path, count: 0
    assert_select "#account", text: "Account", count: 0
  end

  test "layout links after login in" do 
    log_in_as(@user)
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    get signup_path
    assert_equal "Signup | Ruby on Rails Tutorial Sample App", full_title("Signup")
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", users_path, count: 1
    assert_select "#account", text: "Account", count: 1
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", edit_user_path(@user)
    assert_select "a[href=?]", user_path(@user)
  end
end

require 'rails_helper'

def login_as(user_type)

  case user_type
    when :admin
      user = "admin@example.com"
      password = "examplepassword"
  end

  visit new_user_session_path
  within("#new_user") do
    fill_in "user[email]", :with => user
    fill_in "user[password]", :with => password
    click_button "Log in"
  end

  puts page.body

end

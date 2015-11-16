require 'rails_helper'

describe "admin dashboard functionality", type: :feature do

  before(:all) do
    @admin_user = User.where(email: "admin@example.com").first
  end

  it "allows an admin user to log in to the interface" do
    visit '/users/sign_in'
    within("#new_user") do
      fill_in "user_email", with: "admin@example.com"
      fill_in "user_password", with: "examplepassword"
      click_button "Log in"
    end
    expect(page.current_path).to eq "/"
    visit '/admin/dashboard'
    expect(page.status_code).to eq 200
  end

end

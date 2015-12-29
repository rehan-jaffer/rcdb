require 'rails_helper'
require 'support/login_functions'

describe "Drug Form Specification" do
 
  it "allows the creation of a new drug using basic form data" do
    visit new_admin_drug_path
    login_as :admin
    within ("#new_drug") do
      fill_in "drug[primary_name]", :with => "Generic Drug Name"
      click_button "Create Drug"    
    end
  end

end

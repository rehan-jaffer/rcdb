require 'rails_helper'

describe "Reports process", :type => :feature do

  it "shows a message if there are no reports" do
    visit "/cannabinoids/Generic%20Cannabinoid"
    expect(page.body).to have_content "No reports have been submitted yet, be the first!"
  end

end

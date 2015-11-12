require 'rails_helper'

describe "Reports process", :type => :feature do

  it "shows a message if there are no reports" do
    visit "/cannabinoids/Generic%20Cannabinoid"
    expect(page.body).to have_content "No reports have been submitted yet, be the first!"
  end

  describe "Javascript-based actions", js: true do

    it "displays a modal if I click the 'show reports' button" do
      visit "/cannabinoids/Generic%20Cannabinoid"
      click_button "Submit Report"
      expect(page).to have_selector("#submit-report-modal", visible: true)
    end

  end

end

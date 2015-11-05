require 'rails_helper'

describe "Check all the drug index pages to ensure they respond to a basic request", type: :feature do

  it "checks the index of each drug class for a 200 response" do

    ["benzodiazepines","psychedelics","cannabinoids","dissociatives"].each do |drug_class|
    visit "/#{drug_class}"
    expect(page.title).to match(drug_class.capitalize)
    end

  end

end

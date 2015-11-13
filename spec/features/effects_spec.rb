require 'rails_helper'

describe "displays a list of effects properly", type: :feature do

  before(:all) do
    @drug = Drug.where(primary_name: "Generic Cannabinoid").first
    @effect = Effect.new
    @effect.intended = true
    @effect.description = "Good effect"
    @effect.drug_id = @drug.id
    @effect.save
    @side_effect = Effect.new
    @side_effect.description = "Bad Effect"
    @side_effect.drug_id = @drug.id
    @side_effect.intended = false
    @side_effect.save
  end

  describe "displaying lists" do

    it "should display a list of effects given a valid list of entries" do

      visit "/cannabinoids/Generic%20Cannabinoid"
      expect(page.body).to have_selector("h4.effects-header")

    end

    it "should display a list of side effects given a valid list of entries" do

      visit "/cannabinoids/Generic%20Cannabinoid"
      expect(page.body).to have_selector("h4.side-effects-header")

    end

  end

end

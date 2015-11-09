require 'rails_helper'

RSpec.describe Effect, type: :model do

  describe "general properties" do

    before(:each) do
      @effect = Effect.new
      @effect.drug_id = Drug.first.id
      @effect.description = "Drug Effect"
    end

    it "responds appropriately to #is_side_effect? in the positive case" do

      @effect.intended = false
      @effect.save
      expect(@effect.is_side_effect?).to eq(true)
   
    end

    it "responds appropriately to #is_side_effect? in the negative case" do

      @effect.intended = true
      @effect.save
      expect(@effect.is_side_effect?).to eq(false)
   
    end

  end

end

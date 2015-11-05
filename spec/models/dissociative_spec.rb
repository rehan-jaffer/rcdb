require 'rails_helper'

RSpec.describe Dissociative, type: :model do

  before(:all) do
    dissociative = Dissociative.new
    dissociative.primary_name = "Ketamine"
    dissociative.save
  end

  describe "drug class basic behaviour" do

    it "parameterizes itself appropriately" do
      dissociative = Dissociative.first
      expect(dissociative.to_param).to eq("Ketamine")
    end

  end

end

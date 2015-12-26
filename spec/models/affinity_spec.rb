require 'rails_helper'

RSpec.describe Affinity, type: :model do

  describe "presentation" do

    it "has a pretty printing method" do
      affinity = Affinity.new
      affinity.receptor = "a3"
      affinity.value = 20.0
      affinity.order = "nm"
      expect(affinity.to_s).to eq("20.0nm")
    end

  end

end

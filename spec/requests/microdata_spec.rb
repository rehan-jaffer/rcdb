require 'rails_helper'

describe "Test Microdata for Drug pages", type: :request do

  let(:bootstrap) do
#    @cannabinoid = FactoryGirl.build(:cannabinoid)
    path = "/cannabinoids/Generic%20Cannabinoid"
    visit path
    @microdata = Microdata::Document.new(page.body, path).extract_items
  end

  describe "loads page and test microdata" do

    it "has the top-level type of drug" do

    end

  end

end

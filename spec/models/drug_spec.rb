require 'rails_helper'
require 'drug_name'

RSpec.describe Drug, type: :model do

  it "is capable of parsing its content for citation links, and enumerating them as HTML via #to_html" do
    
    @drug = Drug.new
    @drug.primary_name = "Sample Drug"
    @drug.description = "This is a test [http://www.test.com/]"
    expect(@drug.to_html).to eq "This is a test <a href='#citation-1'>[1]</a><h4 class='citation-header'>+ Citations</h4>\r\n<ul class='citation-listing'>\r\n\r\n<li>1. <a href='http://www.test.com/' id='citation-1'>http://www.test.com/</a></li>\r\n</ul>\r\n"

  end

end

Rcdb::Application::DRUG_CLASSES.each do |drug|

  class_name = DrugName::to_model_class(drug)

  describe "drug class behaviour" do

    it "parameterizes itself appropriately (using primary_name)" do

      drug = class_name.new
      drug.primary_name = "Generic Drug"
      expect(drug.to_param).to eq "Generic Drug"

    end

  end

end

require 'rails_helper'
require 'drug_name'

# Metaprogrammed Drugs controller
# Since all drug classes and controllers are derived from the single drug controller, they should all respond
# to the same basic behaviour that it possesses, therefore being able to test them individually despite their
# various additions and substractions in functionality is important, to ensure that they all satisfy the basic criteria

Rcdb::Application::DRUG_CLASSES.each do |drug|

  controller = DrugName.to_controller_class(drug)
  model_class = DrugName.to_model_class(drug)
  model_name = DrugName.to_model_name(drug)

  describe controller, :type => :controller do

    before(:all) do

      model = model_class.new
      model.primary_name = "Generic #{model_name}"
      model.description = "A generic drug description"
      model.save

    end

    describe "general properties" do

      it "is descended from DrugsController" do
        expect(controller.superclass).to eq DrugsController
      end

      it "provides model name upon request" do
        expect(controller.get_model_name).to eq(model_name)
      end

      it "provides model upon request" do
        expect(controller.get_model).to eq(model_class)
      end

   end   

   describe "GET index" do

     it "responds to a basic get request" do
       get :index
       expect(response.response_code).to be 200
     end

     it "assigns a list of #{model_name} drugs to the listing array" do
       get :index
       expect(assigns(:drugs).class).to be Array
     end

  end

  describe "GET show" do

    it "responds to a basic get request for a substance" do
      get :show, :id => "Generic #{model_name}"
      expect(response.response_code).to be 200
    end

    it "assigns an object for the request with the #{model_name} type" do
      get :show, :id => "Generic #{model_name}"
      expect(assigns(:drug).class).to be model_class
    end

  end


  end



end

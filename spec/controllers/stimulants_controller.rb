require 'rails_helper'

RSpec.describe StimulantsController do

  before(:all) do

    @stimulant = Stimulant.new
    @stimulant.primary_name = "Mescaline"
    @stimulant.description = "A hallucinogen"
    @stimulant.save

  end

  describe "general properties" do

   it "is descended from DrugsController" do
     expect(StimulantsController.superclass).to eq DrugsController
   end

    it "provides model name upon request" do
      expect(StimulantsController.get_model_name).to eq("Stimulant")
    end

    it "provides model upon request" do
      expect(StimulantsController.get_model).to eq(Stimulant)
    end

  end

  describe "GET index" do

    it "responds to a basic get request" do
      get :index
      expect(response.response_code).to be 200
    end

    it "assigns a list of stimulant drugs to the listing array" do
      get :index
      expect(assigns(:stimulants).class).to be Array
    end

  end

  describe "GET show" do

    it "responds to a basic get request for a substance" do
      get :show, :id => "Mescaline"
      expect(response.response_code).to be 200
    end

    it "assigns an object for the request with the stimulant type" do
      get :show, :id => "Mescaline"
      expect(assigns(:drug).class).to be Stimulant
    end

  end

end

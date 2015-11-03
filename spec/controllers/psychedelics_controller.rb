require 'rails_helper'

RSpec.describe PsychedelicsController do

  before(:all) do

    @psychedelic = Psychedelic.new
    @psychedelic.primary_name = "Mescaline"
    @psychedelic.description = "A hallucinogen"
    @psychedelic.save

  end

  describe "general properties" do

   it "is descended from DrugsController" do
     expect(PsychedelicsController.superclass).to eq DrugsController
   end

    it "provides model name upon request" do
      expect(PsychedelicsController.get_model_name).to eq("Psychedelic")
    end

    it "provides model upon request" do
      expect(PsychedelicsController.get_model).to eq(Psychedelic)
    end

  end

  describe "GET index" do

    it "responds to a basic get request" do
      get :index
      expect(response.response_code).to be 200
    end

    it "assigns a list of psychedelic drugs to the listing array" do
      get :index
      expect(assigns(:psychedelics).class).to be Array
    end

  end

  describe "GET show" do

    it "responds to a basic get request for a substance" do
      get :show, :id => "Mescaline"
      expect(response.response_code).to be 200
    end

    it "assigns an object for the request with the psychedelic type" do
      get :show, :id => "Mescaline"
      expect(assigns(:drug).class).to be Psychedelic
    end

  end

end

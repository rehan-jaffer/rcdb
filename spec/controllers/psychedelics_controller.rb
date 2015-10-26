require 'rails_helper'

RSpec.describe PsychedelicsController do

  before(:all) do

    @psychedelic = Psychedelic.new
    @psychedelic.primary_name = "Mescaline"
    @psychedelic.description = "A hallucinogen"
    @psychedelic.save

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

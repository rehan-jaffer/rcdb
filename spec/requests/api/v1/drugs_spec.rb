require 'rails_helper'

describe "Drugs API", :type => :request do

  describe "single drug request" do

    it "serves a single request successfully" do
      get '/api/v1/drugs/Generic%20Cannabinoid'
      expect(response).to be_success
    end

    it "returns a JSON object" do
      get '/api/v1/drugs/Generic%20Cannabinoid'
      drug_object = JSON.parse(JSON.parse(response.body))
      expect(drug_object.class).to be Hash 
    end

  end

end

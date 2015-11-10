require 'rails_helper'

RSpec.describe VotesController, type: :controller do

  describe "#create" do

    it "does not allow voting twice on the same item in a short space of time" do
      post :create, {vote: {property: "harm", quantity: 5, drug_id: 1}}
      expect(response.response_code).to be 201
      post :create, {vote: {property: "harm", quantity: 5, drug_id: 1}}
      expect(response.response_code).to be 400
    end

  end

end

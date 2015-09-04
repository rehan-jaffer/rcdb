require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  context "#index" do

    it "renders a basic 200 response" do
     get :index
     expect(response.status).to eql(200)
    end
    
  end

end

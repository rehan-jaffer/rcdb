require 'rails_helper'

RSpec.describe BenzodiazepinesController, type: :controller do

  context "#index" do

    it "assigns the current set of benzodiazepines" do
      get :index
      expect(assigns(:benzodiazepines)).to eql(Benzodiazepine.all.to_a)
    end

  end

end

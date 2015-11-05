require 'rails_helper'

describe HomeController, :type => :controller do

  describe "#index" do

    it "assigns the variables for posts, alerts and latest drugs" do
      get :index
      expect(assigns(:recent)).to eq(Drug.last(5))
      expect(assigns(:posts)).to eq(Post.last(5))
      expect(assigns(:alerts)).to eq(Alert.last(5))
    end

  end

end

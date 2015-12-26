require 'rails_helper'

describe User, type: "model" do

  describe "Class Behaviour" do

    let(:user) { User.new }

    it "has a default class of consumer" do
      expect(user.user_class).to eq "Consumer"
    end

    it "can be upgraded to a moderator class" do
      user.make_user_moderator!
      expect(user.user_class).to eq "Moderator"
    end

    it "can be upgraded to an admin" do
      user.make_user_admin!
      expect(user.user_class).to eq "Admin"
    end

  end

end

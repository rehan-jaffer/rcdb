require 'rails_helper'

RSpec.describe Vote, type: :model do

  describe "vote contraints" do
    let(:vote) { Vote.new }

    it "does not allow voting for a property that does not exist" do
      
    end
  end  

end

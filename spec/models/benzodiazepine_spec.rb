require 'rails_helper'

RSpec.describe Benzodiazepine, type: :model do

  before(:all) do
    @no_equivalent = Benzodiazepine.new
  end

  it "provides correct output for a benzo with no valium equivalence" do
    expect(@no_equivalent.to_valium).to eql("unknown")
  end

end

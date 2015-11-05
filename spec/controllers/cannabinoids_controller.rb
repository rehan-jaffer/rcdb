require 'rails_helper'

describe CannabinoidsController, :type => :controller do

  it "subclasses drugscontroller" do
    expect(CannabinoidsController.superclass).to eq(DrugsController)
  end

end

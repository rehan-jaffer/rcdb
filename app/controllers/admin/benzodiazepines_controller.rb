class Admin::BenzodiazepinesController < ApplicationController

  def new
    @benzo = Benzodiazepine.new
  end

  def create
    @benzo = Benzodiazepine.new(benzo_attributes)
    @benzo.save
  end

  def edit
  end

  def save
  end

  def update
  end

  def benzo_attributes
    params.require(:benzodiazepine).permit(:primary_name, :valium_equiv, :description, :half_life, :onset, affinity: Benzodiazepine.stored_attributes[:affinity])
  end

end

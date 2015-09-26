class StimulantsController < ApplicationController

  def index
   @stimulants = Stimulant.all
  end

  def show
   @stimulant = Stimulant.find_by_primary_name(stimulant_params[:primary_name])
  end

  def stimulant_params
    params.require(:stimulant).permit([:primary_name])
  end

end

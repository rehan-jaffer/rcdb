class StimulantsController < ApplicationController

  def index
   @title = "Stimulants"
   @stimulants = Stimulant.all
  end

  def show
   # UNSAFE
   @drug = Stimulant.where(primary_name: params[:id]).first
   render 'application/drug'
  end

  def stimulant_params
    params.require(:stimulant).permit([:primary_name])
  end

end

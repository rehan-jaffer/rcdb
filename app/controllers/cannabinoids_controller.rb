class CannabinoidsController < ApplicationController

  def index
    @cannabinoids = Cannabinoid.all
  end

  def show
    @cannabinoid = Cannabinoid.where(:primary_name => params[:id]).first
  end

  def cannabinoid_params
    params.require(:cannabinoid).permit([:primary_name, :id])
  end

end

class CannabinoidsController < ApplicationController

  def index
    @cannabinoids = Cannabinoid.all
  end

  def show
    @drug = Cannabinoid.where(:primary_name => params[:id]).first
    @title = "Cannabinoids / #{@drug.primary_name}"
    @report = Report.new
    render 'application/drug'
  end

  def cannabinoid_params
    params.require(:cannabinoid).permit([:primary_name, :id])
  end

end

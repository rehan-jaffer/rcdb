class Admin::CannabinoidsController < ApplicationController

  def new
    @cannabinoid = Cannabinoid.new
  end

  def edit

  end

  def create
    @cannabinoid = Cannabinoid.new(cannabinoid_params)
    @cannabinoid.save
  end

  def index

  end

  def cannabinoid_params
    params.require(:cannabinoid).permit([:primary_name])
  end

end

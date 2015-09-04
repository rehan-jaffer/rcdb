class BenzodiazepinesController < ApplicationController

  def new
    @benzodiazepine = Benzodiazepine.new
  end

  def index
    @benzodiazepines = Benzodiazepine.all.to_a
  end

  def show
    @benzodiazepine = Benzodiazepine.where(:primary_name => params[:id]).first
  end

end

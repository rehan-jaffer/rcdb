class BenzodiazepinesController < ApplicationController

  def index
    @benzodiazepines = Benzodiazepine.all.to_a
  end

  def show
    @benzodiazepine = Benzodiazepine.where(:primary_name => params[:id]).last
    @report = Report.new
  end

end

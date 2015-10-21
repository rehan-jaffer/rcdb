class Admin::MetabolitesController < ApplicationController

  def new
    @metabolite = Metabolite.new
  end

  def edit
    @metabolite = Metabolite.find(params[:id])
  end

  def create
    @metabolite = Metabolite.new(metabolite_params)
    if @metabolite.save
      redirect_to admin_metabolites_path
    else
      render :new
    end
  end

  def update
  end

  def index
    @metabolites = Metabolite.all
  end

  def metabolite_params
    params.require(:metabolite).permit(:drug_id, :name, :active)
  end

end

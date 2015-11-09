class Admin::OpiatesController < ApplicationController

  def new
    @drug = Opiate.new
    @drug_form = DrugForm.new
  end

end

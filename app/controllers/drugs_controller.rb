class DrugsController < ApplicationController

  def self.get_model
    Object.const_get(get_model_name)
  end

  def self.get_model_name
    model = self.name.to_s.gsub("Controller", "").singularize
  end

  def index
   @title = self.class.get_model_name.pluralize
   @drugs = self.class.get_model.all.to_a
  end

  def show
    @drug = self.class.get_model.where(:primary_name => params[:id]).last
    @title = "#{self.class.get_model_name} / #{@drug.primary_name}"
    @report = Report.new
    render 'application/drug'
    return
  end

  private

    def switch_drugs_path(primary_name)
      return send("#{self.class.downcase}_path", primary_name)
    end

end

class DissociativesController < DrugsController

  def index
    @dissociatives = Dissociative.all.to_a
  end

  def show
    @drug = Dissociative.where(:primary_name => params[:id]).first
    @title = "Dissociatives / @drug.primary_name"
    @report = Report.new
    render 'application/drug'
  end

end

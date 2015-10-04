class CannabinoidsController < DrugsController

  def index
    @cannabinoids = Cannabinoid.all
  end

  def show
    # UNSAFE
    @drug = Cannabinoid.where(:primary_name => params[:id]).first
    @title = "Cannabinoids / #{@drug.primary_name}"
    @report = Report.new
    render 'application/drug'
  end

end

class BenzodiazepinesController < DrugsController

  def index
    @title = "Benzodiazepines"
    @benzodiazepines = Benzodiazepine.all.to_a
  end

  def show
    @drug = Benzodiazepine.where(:primary_name => params[:id]).last
    @title = "Benzodiazepines / #{@drug.primary_name}"
    @report = Report.new
    render 'application/drug'
    return
  end

end

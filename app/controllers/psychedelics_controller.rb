class PsychedelicsController < DrugsController

  def index
    @title = "Psychedelics"
    @psychedelics = Psychedelic.all.to_a
  end

  def show
    @drug = Psychedelic.where(:primary_name => params[:id]).last
    @title = "Psychedelics / #{@drug.primary_name}"
    @report = Report.new
    render 'application/drug'
    return
  end

end

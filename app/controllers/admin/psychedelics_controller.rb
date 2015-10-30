class Admin::PsychedelicsController < Admin::DrugsController

  def new
    @psychedelic = Psychedelic.new
    @receptor_list = Psychedelic.receptor_list
  end

  def create
    @psychedelic = Psychedelic.new(psychedelic_attributes)
    @receptor_list = Psychedelic.receptor_list
    if @psychedelic.save
      redirect_to admin_psychedelics_path
    else
      render :new
    end

  end

  def edit
    @psychedelic = Psychedelic.where(:primary_name => params[:id]).first
    @receptor_list = Psychedelic.receptor_list
  end

  def update
    @psychedelic = Psychedelic.update(psychedelic_attributes[:id], psychedelic_attributes)
    @receptor_list = Psychedelic.receptor_list
    if @psychedelic
      redirect_to admin_psychedelics_path
    else
      flash[:error] = @psychedelic.errors
      render :edit
      return
    end
  end

  def index
    @psychedelics = Psychedelic.all
  end

  def psychedelic_attributes
    params.require(:psychedelic).permit(drug_attributes | [affinity: Psychedelic.stored_attributes[:affinity]])
  end

end

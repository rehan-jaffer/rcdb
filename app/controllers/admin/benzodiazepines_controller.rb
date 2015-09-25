class Admin::BenzodiazepinesController < Admin::AdminController

  def new
    @benzo = Benzodiazepine.new
    @receptor_list = Benzodiazepine.receptor_list
  end

  def create
    @benzo = Benzodiazepine.new(benzo_attributes)
    if @benzo.save
      redirect_to admin_benzodiazepines_index_path
    else
      render :new
    end
  end

  def edit
    @benzo = Benzodiazepine.find_by_id(benzo_attributes[:id])
  end

  def save
  end

  def update
  end

  def index
    @benzos = Benzodiazepine.all
  end

  def benzo_attributes
    params.require(:benzodiazepine).permit(:primary_name, :valium_equiv, :description, :half_life, :onset, affinity: Benzodiazepine.stored_attributes[:affinity])
  end

end

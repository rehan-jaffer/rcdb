class Admin::BenzodiazepinesController < Admin::AdminController

  def new
    @benzo = Benzodiazepine.new
  end

  def create
    @benzo = Benzodiazepine.new(benzo_attributes)
    @benzo.save
  end

  def edit
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

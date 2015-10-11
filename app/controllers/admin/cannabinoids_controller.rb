class Admin::CannabinoidsController < Admin::DrugsController

  def new
    @cannabinoid = Cannabinoid.new
    @receptor_list = Cannabinoid.receptor_list
  end

  def create
    @cannabinoid = Cannabinoid.new(cannabinoid_attributes)
    @receptor_list = Cannabinoid.receptor_list
    if @cannabinoid.save
      redirect_to admin_cannabinoids_path
    else
      render :new
    end

  end

  def edit
    @cannabinoid = Cannabinoid.where(:primary_name => params[:id]).first
    @receptor_list = Cannabinoid.receptor_list
  end

  def update
    @cannabinoid = Cannabinoid.update(cannabinoid_attributes[:id], cannabinoid_attributes)
    @receptor_list = Cannabinoid.receptor_list
    if @cannabinoid
      redirect_to admin_cannabinoids_path
    else
      flash[:error] = @cannabinoid.errors
      render :edit
      return
    end
  end

  def index
    @cannabinoids = Cannabinoid.all
  end

  def cannabinoid_attributes
    params.require(:cannabinoid).permit(:id, :primary_name, :valium_equiv, :description, :half_life, :full_name, :paper_feed, :onset, affinity: Cannabinoid.stored_attributes[:affinity], trade_names: [], other_names: [], classes: [], side_effects: [], solubility: [])
  end

end

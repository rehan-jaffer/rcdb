class Admin::CannabinoidsController < Admin::AdminController

  def new
    @cannabinoid = Cannabinoid.new
  end

  def edit

  end

  def create

    @cannabinoid = Cannabinoid.new(cannabinoid_params)
    if @cannabinoid.save
      redirect_to admin_cannabinoids_index_path
    else
      render :new
    end

  end

  def index

  end

  def cannabinoid_params
    params.require(:cannabinoid).permit([:primary_name])
  end

end

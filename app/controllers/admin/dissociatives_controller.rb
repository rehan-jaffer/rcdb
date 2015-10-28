class Admin::DissociativesController < Admin::DrugsController

  def new
    @dissociative = Dissociative.new
    @receptor_list = Dissociative.receptor_list
  end

  def create
    @dissociative = Dissociative.new(dissociative_attributes)
    @receptor_list = Dissociative.receptor_list
    if @dissociative.save
      redirect_to admin_dissociatives_path
    else
      render :new
    end

  end

  def edit
    @dissociative = Dissociative.where(:primary_name => params[:id]).first
    @receptor_list = Dissociative.receptor_list
  end

  def update
    @dissociative = Dissociative.update(dissociative_attributes[:id], dissociative_attributes)
    @receptor_list = Dissociative.receptor_list
    if @dissociative
      redirect_to admin_dissociatives_path
    else
      flash[:error] = @dissociative.errors
      render :edit
      return
    end
  end

  def index
    @dissociatives = Dissociative.all
  end

  def dissociative_attributes
    params.require(:dissociative).permit(drug_attributes | affinity: Dissociative.stored_attributes[:affinity])
  end

end

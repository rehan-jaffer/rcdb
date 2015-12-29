class Admin::DrugsController < Admin::AdminController

  def new
    @drug = class_type.new
    @receptor_list = class_type.receptor_list
  end

  def edit
    @drug = class_type.where(:primary_name => params[:id]).first
    @receptor_list = class_type.receptor_list    
  end

  def create
    @drug = class_type.new(send("#{class_name}_attributes"))
    @receptor_list = class_type.receptor_list
    if @drug.save
      send(:redirect_to, send("admin_#{class_name.pluralize}_path"))
    else
      render :new
      return
    end
  end

  def update
    @drug = class_type.update(send("#{class_name}_attributes")[:id], send("#{class_name}_attributes"))
    @receptor_list = class_type.receptor_list
    if @drug
      send(:redirect_to, send("admin_#{class_name.pluralize}_path"))
    else
      flash[:error] = @drug.errors
      render :edit
      return
    end
  end

  def index
    @drugs = class_type.all
  end

  def class_type
    Drug
  end

  def class_name
    "drug"
  end

  def drug_attributes
    [:cid, :harm_votes, :harm_rating, :addiction_rating, :addiction_votes, :molecule_image, :molecule_image_source, :id, :primary_name, :description, :half_life, :full_name, :paper_feed, :onset, trade_names: [], other_names: [], classes: [], solubility: [], side_effects: []]
  end

end

class Admin::StimulantsController < Admin::DrugsController

  def class_type
    Stimulant
  end

  def class_name
    "stimulant"
  end

  def stimulants_attributes
    params.require(:stimulant).permit(drug_attributes_list | [affinity: Stimulant.stored_attributes[:affinity]])
  end

end

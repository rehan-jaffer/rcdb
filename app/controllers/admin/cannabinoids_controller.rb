class Admin::CannabinoidsController < Admin::DrugsController

  def class_type
    Cannabinoid
  end

  def class_name
    "cannabinoid"
  end

  def cannabinoid_attributes
    params.require(:cannabinoid).permit(drug_attributes_list | [affinity: Cannabinoid.stored_attributes[:affinity]])
  end

end

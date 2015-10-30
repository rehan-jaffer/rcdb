class Admin::DissociativesController < Admin::DrugsController

  def class_type
    Dissociative
  end

  def class_name
    "dissociative"
  end

  def dissociative_attributes
    params.require(:dissociative).permit(drug_attributes | [affinity: Dissociative.stored_attributes[:affinity]])
  end

end

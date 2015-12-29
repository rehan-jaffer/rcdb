class Admin::BenzodiazepinesController < Admin::DrugsController

  def class_type
    Benzodiazepine
  end

  def class_name
    "benzodiazepine"
  end

  def benzodiazepine_attributes
    params.require(:benzodiazepine).permit(drug_attributes_list | [:valium_equiv, affinity: Benzodiazepine.stored_attributes[:affinity]])
  end

end

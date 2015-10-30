class Admin::PsychedelicsController < Admin::DrugsController

  def class_type
    Psychedelic
  end

  def class_name
    "psychedelic"
  end

  def psychedelic_attributes
    params.require(:psychedelic).permit(drug_attributes | [affinity: Psychedelic.stored_attributes[:affinity]])
  end

end

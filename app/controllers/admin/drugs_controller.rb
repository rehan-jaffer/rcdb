class Admin::DrugsController < Admin::AdminController

  def drug_attributes
    [:harm_rating, :addiction_rating, :molecule_image, :molecule_image_source, :id, :primary_name, :description, :half_life, :full_name, :paper_feed, :onset, trade_names: [], other_names: [], classes: [], solubility: [], side_effects: [], references: []]
  end

end

class Cannabinoid < ActiveRecord::Base

  extend Drug::DrugProperties

  acts_as :drug

  def to_param
    primary_name
  end

  def self.receptor_list
      [:cb1, :cb2]
  end

  self.class_eval do
    affinity_accessors(receptor_list)
  end

end

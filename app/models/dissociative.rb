class Dissociative < ActiveRecord::Base

  extend Drug::DrugProperties

  acts_as :drug

  def to_param
    primary_name
  end

  def self.receptor_list
      []
  end

  self.class_eval do
    affinity_accessors(receptor_list)
    onset_accessors
  end


end

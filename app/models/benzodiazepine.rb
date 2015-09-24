class Benzodiazepine < ActiveRecord::Base

  extend Drug::DrugProperties

  acts_as :drug

  # refactor this to use an array of hstore keys
  def to_valium
    valium_equiv || "unknown"
  end

  def to_param
    primary_name
  end

  def self.receptor_list
      [:α1, :α2, :α3, :α4, :α5, :α6, :β1, :β2, :β3, :γ1, :γ2, :γ3]
  end

  self.class_eval do
    affinity_accessors(receptor_list)
  end

end

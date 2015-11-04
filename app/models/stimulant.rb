class Stimulant < ActiveRecord::Base

  acts_as :drug

  def to_param
    primary_name
  end

  def self.receptor_list
    []
  end

end

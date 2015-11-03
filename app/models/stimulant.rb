class Stimulant < ActiveRecord::Base

  acts_as :drug

  def self.receptor_list
    []
  end

end

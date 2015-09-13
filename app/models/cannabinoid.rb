class Cannabinoid < ActiveRecord::Base

  acts_as :drug

  def to_param
    primary_name
  end

end

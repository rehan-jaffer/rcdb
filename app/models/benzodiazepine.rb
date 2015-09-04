class Benzodiazepine < ActiveRecord::Base

  acts_as :drug

  def to_valium
    valium_equiv || "unknown"
  end

end

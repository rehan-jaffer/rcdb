class Locality < ActiveRecord::Base
 
  belongs_to :drug

  validates_inclusion_of :country_code, :within => COUNTRY_CODES

end

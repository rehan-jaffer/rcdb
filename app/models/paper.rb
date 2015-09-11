class Paper < ActiveRecord::Base

  belongs_to :drug
  validates_uniqueness_of :title
  validates_uniqueness_of :link

end

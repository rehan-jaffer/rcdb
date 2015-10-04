class Report < ActiveRecord::Base

  belongs_to :drug

  scope :approved, -> { where(:moderated => true, :approved => true) }
  scope :waiting, -> { where(:approved => false, :moderated => false) }

end

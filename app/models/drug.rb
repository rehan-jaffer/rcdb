class Drug < ActiveRecord::Base

  actable
  resourcify
  has_many :resources
  has_many :papers
  has_many :reports
  has_many :metabolites

  validates_presence_of :primary_name
  validates_uniqueness_of :primary_name

  def to_param
    primary_name
  end

  def inception_date
    self.start_date.strftime("%B %Y")
  end

end

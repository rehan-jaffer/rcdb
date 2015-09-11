class Drug < ActiveRecord::Base
  actable
  has_many :resources
  has_many :papers
  has_many :reports

  validates_presence_of :primary_name
  validates_uniqueness_of :primary_name

  def to_param
    primary_name
  end

end

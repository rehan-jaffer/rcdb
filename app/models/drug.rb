class Drug < ActiveRecord::Base

  actable
  resourcify
  has_many :resources
  has_many :papers
  has_many :reports
  has_many :metabolites

  validates_presence_of :primary_name
  validates_uniqueness_of :primary_name

  before_save :eliminate_empties

  # this is a hacky fix
  def eliminate_empties
    ["classes", "trade_names", "other_names"].each do |field|
      send(field.to_sym).reject! { |item| item.empty? }
    end
  end

  def to_param
    primary_name
  end

  def inception_date
    self.start_date.strftime("%B %Y")
  end

end

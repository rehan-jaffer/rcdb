class Drug < ActiveRecord::Base
  actable
  has_many :resources

  def to_param
    primary_name
  end

end

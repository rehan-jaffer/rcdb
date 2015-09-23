class Drug < ActiveRecord::Base

  actable
  resourcify
  has_many :resources
  has_many :papers
  has_many :reports

  validates_presence_of :primary_name
  validates_uniqueness_of :primary_name

  def to_param
    primary_name
  end

  private

    def affinity_accessors(receptors)
      receptors.each do |subtype|
        store_accessor :affinity, subtype
      end
    end

end

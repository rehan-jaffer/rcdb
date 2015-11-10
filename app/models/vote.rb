require 'digest/md5'

class Vote < ActiveRecord::Base

  validates_presence_of :ip_address
#  validates_format_of :ip_address, :with => /\A\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\.\z/
  validates_inclusion_of :property, in: ["addiction", "harm"], error: "Vote must be for a valid property"
  validates_uniqueness_of :hashed
  before_save :hash_vote

  def hash_vote
    hashed = Digest::MD5.hexdigest(ip_address + DateTime.now.strftime("%Y-%m-%d") + property + drug_id.to_s)
  end

end

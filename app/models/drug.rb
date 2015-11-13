class Drug < ActiveRecord::Base

  actable
  resourcify
  has_many :resources
  has_many :papers
  has_many :reports
  has_many :metabolites
  has_many :localities
  has_many :references
  has_many :drugs
  has_many :effects

  include Drug::CitationParser

  has_attached_file :molecule_image, :styles => {:medium => "300x200>", :thumb => "100x100#"}, :default_url => "missing.png"

  validates_attachment :molecule_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  validates_presence_of :primary_name
  validates_uniqueness_of :primary_name

  before_save :eliminate_empties

  # this is a hacky fix
  def eliminate_empties
    ["classes", "trade_names", "other_names", "solubility"].each do |field|
      unless send(field).nil?
        send(field).reject! { |item| item.empty? }
      end 
   end
  end

  def to_param
    primary_name
  end

  def to_html
    LinkParser.parse(description).html_safe
  end

  def side_effects
    @side_effects ||= Effect.where(:drug_id => id, intended: false)
  end

  def inception_date
    self.start_date.strftime("%B %Y")
  end

  def inception_year
    self.start_date.strftime("%Y")
  end

  def inception_month
    self.start_date.strftime("%B")
  end

end

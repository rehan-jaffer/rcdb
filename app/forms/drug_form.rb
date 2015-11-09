class DrugForm
  include ActiveModel::Model
  include Virtus

  attribute :primary_name, String
  attribute :research_chemical, Boolean
  attribute :start_date, DateTime
  attribute :effects, Array[String]
  attribute :side_effects, Array[String]
  attribute :trade_names, Array[String]
  attribute :full_name, String
  attribute :description
  attribute :harm_rating, Integer
  attribute :harm_votes, Integer
  attribute :addiction_rating, Integer
  attribute :addiction_votes, Integer
  attribute :paper_feed, String
  attribute :report_feed_url, String

end

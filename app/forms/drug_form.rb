class DrugForm
  include ActiveModel::Model
  include Virtus

  attribute :primary_name, String
  attribute :research_chemical, Boolean
  attribute :start_date, DateTime
  attribute :effects, Array[String]
  attribute :side_effects, Array[String]
  attribute :affinity, Array[String]
  attribute :legalities, Hash[Symbol => String]
  attribute :trade_names, Array[String]
  attribute :full_name, String
  attribute :description
  attribute :harm_rating, Integer
  attribute :harm_votes, Integer
  attribute :addiction_rating, Integer
  attribute :addiction_votes, Integer
  attribute :paper_feed, String
  attribute :report_feed_url, String

  def initialize(drug_params)
    @drug_id = drug_params[:id]
    # this should throw an error if there is no drug
    if @drug_id
      @drug = Drug.find(@drug_id)
    end
  end

  def legalities
    (@drug_id) ? @legalities ||= Locality.where(drug_id: @drug_id) : []
  end

  def effects
    (@drug_id) ? @effects ||= Effect.where(drug_id: @drug_id, intended: true) : []
  end

  def effects=(effect_list)
    @effects = effect_list
  end

  def side_effects
    (@drug_id) ? @side_effects ||= Effect.where(drug_id: @drug_id, intended: false) : []
  end

  def side_effects=(effect_list)
    @side_effects = effect_list
  end

  def method_missing(method_name, *args)
    @drug.send(method_name, args)
  end

  def save
 
    if valid?
      persist
      true
    else
      false
    end

  end

  def persist

    @effects.each do |effect|

    end  

    @side_effects.each do |side_effect|

    end

    @legalities.each do |legality|

    end

  end

end

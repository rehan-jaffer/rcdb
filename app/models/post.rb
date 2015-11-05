class Post < ActiveRecord::Base

  validates_presence_of :title
  validates_presence_of :body

  scope :latest, -> (n) { order("id DESC").limit(n) }

end

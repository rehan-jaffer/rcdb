class Post < ActiveRecord::Base

  scope :latest, -> (n) { order("id DESC").limit(n) }

end

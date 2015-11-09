class Effect < ActiveRecord::Base

  belongs_to :drug

  def is_side_effect?
    return !intended?
  end  

end

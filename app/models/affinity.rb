class Affinity < ActiveRecord::Base

  def to_s
    pretty_print
  end

  def pretty_print
    "#{value}#{order}"
  end

end

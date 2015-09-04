module ApplicationHelper

  def display_other_names(names)
    unless names.nil?
      return names.map { |name| name }.join(",")
    end
  end

end

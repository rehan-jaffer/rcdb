module ApplicationHelper

  def display_other_names(names)
    unless names.nil?
      return names.map { |name| name }.join(", ")
    end
  end

  def display_trade_names(names)
    unless names.nil?
      return names.map { |name| name }.join(", ")
    end
  end

  def display_alert(alert)

    alert_class = case alert.severity
      when 10
        "alert-danger"
      when 5
        "alert-warning"
    end

    content_tag(:div, 
      content_tag(:strong, alert.title) +
      content_tag(:p, alert.body), :class => "alert #{alert_class}")
  end

  def display_bar(degree)
    render :partial => 'display_bar', locals: {degree: (degree.to_i * 10)}
  end

end

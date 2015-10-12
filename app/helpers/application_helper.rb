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

  def display_side_effects(effects)
    content_tag(:ul,
    effects.map { |effect|
      content_tag(:li,
        effect,
      class: "drug-side-effect")
    }.join("\r\n").html_safe,
    class: "drug-side-effects").html_safe
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

    degree_whole = degree.to_i * 10

    bar_class = case degree_whole
      when 10
        "danger"
      when 5
        "warning"
      when 1
        "success"
    end

    render :partial => 'display_bar', locals: {degree: (degree.to_i * 10), bar_class: bar_class}
  end

end

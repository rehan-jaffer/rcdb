module DrugsHelper

  # added kp as shorthand for KeywordParser

  def kp(text)
    LinkParser.parse(KeywordParser.scan(text)).html_safe
  end

  def drug_inputs(form_object, drug, receptor_list)
    render :partial => "forms/drug", :locals => {:f => form_object, :drug => drug, :receptor_list => receptor_list}
  end

  def icon_helper(name, size="md")

  end

  def rating_dial(n, header)
    render :partial => "dial", locals: {rating: n, header: header}
  end

  def styled_panel_helper(title, body)
    render :partial => 'panel', locals: {title: title, body: body}
  end

  def display_google_trends_graph(drug_name)
    return "<script type = 'text/javascript' src = '//www.google.com/trends/embed.js?hl=en-US&q=buy+#{drug_name}&cmpt=q&tz=Etc/GMT&tz=Etc/GMT&content=1&cid=TIMESERIES_GRAPH_0&export=5&w=500&h=330'></script>".html_safe
  end

  def select_drug_path(drug)
  
    drug_type = drug.class_type
    return send("#{drug_type}_path", drug.primary_name)

  end

  def drug_microdata(drug)
    render :partial => 'drug_microdata', locals: {:drug => drug}
  end

end

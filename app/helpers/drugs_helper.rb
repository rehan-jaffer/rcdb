module DrugsHelper

  def display_google_trends_graph(drug_name)
    return "<script type = 'text/javascript' src = '//www.google.com/trends/embed.js?hl=en-US&q=buy+#{drug_name}&cmpt=q&tz=Etc/GMT&tz=Etc/GMT&content=1&cid=TIMESERIES_GRAPH_0&export=5&w=500&h=330'></script>".html_safe
  end

  def select_drug_path(drug)
  
    drug_type = drug.class
    return send("#{drug_type.to_s.downcase}_path", drug.primary_name)

  end

end

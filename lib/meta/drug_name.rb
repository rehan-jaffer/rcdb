module DrugName

  def self.to_controller_class(name)
    capital_name = name.capitalize
    controller_name = "#{capital_name}Controller"
    Object.const_get(controller_name)
  end

  def self.to_model_name(name)
    name.singularize.capitalize
  end

  def self.to_model_class(name)
    Object.const_get(to_model_name(name))
  end

end

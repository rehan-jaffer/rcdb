module Admin::DashboardHelper

  # these can be refactored into a single function for both

  def array_input_helper(drug_object, field)
    fields = []
    fields << content_tag(:div, label_tag("#{field}", field.capitalize))
    10.times do |n|
      fields << text_field_tag("#{drug_object.class.to_s.downcase}[#{field}][]", drug_object.send(field.to_sym)[n])
    end
    fields.join("\r\n").html_safe
  end

  def affinity_inputs_helper(form_object, receptor_list)
   form = ''
   form_object.simple_fields_for :affinity do |receptor_inputs|
     receptor_list.each do |receptor|
       form << content_tag(:div,
         receptor_inputs.input(receptor, input_html: {:g1 => "g1"}, size: 4),
       class: "col-lg-8 col-md-8")
     end
   end
   form.html_safe
  end

  def halflife_inputs_helper(form_object, halflife_list)
   form = ''
   form_object.simple_fields_for :affinity do |receptor_inputs|
     receptor_list.each do |receptor|
       form << content_tag(:div,
         receptor_inputs.input(receptor, input_html: {:g1 => "g1"}, size: 4),
       class: "col-lg-8 col-md-8")
     end
   end
   form.html_safe
  end

  def onset_inputs_helper(form_object)
  form = ''
  onset_array = [:onset_oral, :onset_iv, :onset_insufflation, :onset_rectal, :onset_sublingual, :onset_inhaled]
    form_object.simple_fields_for :onset do |onset_input|
       onset_array.each do |onset_type|
         form << content_tag(:div,
           onset_input.input(onset_type, size: 4),
         class: "col-lg-8 col-md-8")
       end
    end
    form.html_safe
  end

end

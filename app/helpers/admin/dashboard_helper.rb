module Admin::DashboardHelper

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
end

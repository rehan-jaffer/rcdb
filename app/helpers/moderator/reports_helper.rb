module Moderator::ReportsHelper

  def report_options_helper(id)

    ['Approve', 'Kill', 'Nothing'].map do |label|
      label_tag(label).html_safe + radio_button_tag("report_action[#{id}]", label).html_safe
    end.join("\r\n").html_safe

  end

end

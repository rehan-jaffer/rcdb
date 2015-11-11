var dial = {
  trigger: $(".vote-button"),
  access_point: "/votes",
  setup: function() {
    return this.trigger.on("click", function() {
      rating_property = $(this).data("target");
      data_element = $("#" + rating_property + "_rating");
      success_source = $("#voted-container").html();
      success_template = Handlebars.compile(success_source);
      failure_source = $("#failed-container").html();
      failure_template = Handlebars.compile(failure_source);
      return $.ajax({
        url: "/votes",
        type: "POST",
        dataType: "JSON",
        data: {vote: 
                {drug_id: $(this).data("drug-id"),
                 quantity: data_element.val(),
                 property: $(this).data("target")}}
      }).success(function() {
        // Use a JS template library here to replace the existing HTML with something worthwhile
        $("#" + rating_property).html(success_template);
      }).fail(function() {
        // display the error in this case in a popup of some kind, growl-style notification?
        $("#" + rating_property).html(failure_template);
      })
    });
    }
};

$(document).ready(function() {
    xhr = dial.setup();
});


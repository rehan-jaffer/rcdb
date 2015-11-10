var dial = {
  trigger: $(".vote-button"),
  access_point: "/votes",
  setup: function() {
    alert("setup fired!");
    return this.trigger.on("click", function() {
      data_element = $("#"+$(this).data("target")+"_rating");
      alert("clicked!");
      return $.ajax({
        url: "/votes",
        type: "POST",
        dataType: "JSON",
        data: {vote: 
                {drug_id: $(this).data("drug-id"),
                 quantity: data_element.val(),
                 property: $(this).data("target")}}
      }).success(function() {
        // replace ratings box with a notice here
        alert("success!");
      }).fail(function() {
        // display the error in this case in a popup of some kind, growl-style notification?
        alert("failed!");
      })
    });
    }
};

$(document).ready(function() {
    xhr = dial.setup();
});


$(document).ready(function() {
  $(".vote-button").on("click", function() {
    data_element = $("#"+$(this).data("target")+"_rating");
    $.post("/votes", {vote: {drug_id: $(this).data("drug-id"), quantity: data_element.val(), property: $(this).data("target")}}, function(evt) {
      // success code goes here
      console.log(evt.responseText);
    });
  });
});


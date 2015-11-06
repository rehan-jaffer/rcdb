
$(document).ready(function() {
  $(".drug-description").on("click", function() {
    $(this).hide();
    $(".drug-description-edit").show();
    // this won't work, as the text is post-processing? Replace it once you've figured things out
    $(".drug-description-edit").val($(".drug-description").text());
  })
});

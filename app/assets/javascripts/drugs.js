// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function () {
  $('[data-toggle="popover"]').popover()
});

$(function() {
  $('.report-body').hide();
  $('.report-link').on('click', function() {
    $(this).parents(".report-box").children(".report-body").show();
  });

  $(".dial").knob();

  $(".drug-class-type").addClass("btn")
  $(".drug-class-type").addClass("btn-default")

  $(".report-modal-trigger").on("click", function() {
    $(".submit-report-modal").modal("show");
  });

});

// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var toggler = {
  init: function(trigger, property) {
    property.hide();
    trigger.on("click", function() {
      property.toggle();
    })
  }
};

$(function() {
  $('[data-toggle="popover"]').popover();
});

$(function() {

  var citation_toggle = toggler;
  var paper_toggle = toggler;
  var report_toggle = toggler;
  citation_toggle.init($(".citation-header"), $(".citation-listing"));
  paper_toggle.init($(".paper-toggle"), $(".papers-container"));
  report_toggle.init($(".report-link"), $(".report-body"));

//  $('.report-body').hide();
//  $('.report-link').on('click', function() {
//    $(this).parents(".report-box").children(".report-body").show();
//  });

  $(".dial").knob();

  $(".drug-class-type").addClass("btn")
  $(".drug-class-type").addClass("btn-default")

  $(".report-modal-trigger").on("click", function() {
    $(".submit-report-modal").modal("show");
  });


});

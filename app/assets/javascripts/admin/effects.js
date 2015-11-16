// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  $(document).on("ajax:success", "#new_effect", function(event, xhr, settings) {
    $(".events-container").html(xhr);
  });
  $(document).on("ajax:success", ".effects-delete-link", function(event, xhr, settings) {
    $(".events-container").html(xhr);
  });
});

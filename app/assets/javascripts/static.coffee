$ ->
  $('.button-collapse').sideNav()
  $('.slider').slider({
    full_width: true
    height: 400
  });
  Waves.displayEffect()

$ ->
  $('.datepicker').pickadate({
     selectMonths: true
     selectYears: 15
   });

$(document).on 'page:change', ->
  $('#main-content').addClass('animated fadeInUp')

$(document).on 'click', '.open-present', ->
  $("#the-present").fadeOut()

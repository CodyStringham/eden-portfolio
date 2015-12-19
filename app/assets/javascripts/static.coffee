$ ->
  $('.button-collapse').sideNav()
  $('.slider').slider({
    full_width: true
    height: 400
  });
  Waves.displayEffect()

$(document).on 'page:fetch', ->
  $('#main-content').addClass('animated fadeOut')

$(document).on 'page:change', ->
  $('#main-content').addClass('animated fadeInUp')

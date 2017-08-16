// Sample CoffeeScript code from the RoR project

$(document).on "turbolinks:load", ->
  $('#show-comments-link').click ->
    $('#show-comments-link').hide()
    $('#question-comment-list').fadeToggle()
    $('#hide-comments-link').show()

  $('#hide-comments-link').click ->
    $('#hide-comments-link').hide()
    $('#question-comment-list').fadeToggle()
    $('#show-comments-link').show()

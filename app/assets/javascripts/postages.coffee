# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#prefectures').change ->

    name = $('option:selected').html()
    # .val() will gets an id

    jsonPref = { "name": name }

    $.ajax
      type: 'POST',
      url: '/postages/postage'
      async: true
      dataType: 'json'
      data: jsonPref
      context: this
      success: (data, status, xhr) ->
        $('#display_postage').html Math.ceil(data.postage)

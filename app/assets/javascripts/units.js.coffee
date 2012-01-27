# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#unit_district_id').parent().hide()
  districts = $('#unit_district_id').html()
  $('#council_id').change ->
    council = $('#council_id :selected').text()
    escaped_council = council.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(districts).filter("optgroup[label='#{escaped_council}']").html()
    if options
      $('#unit_district_id').html(options)
      $('#unit_district_id').parent().show()
    else
      $('#unit_district_id').empty()
      $('#unit_district_id').parent().hide()
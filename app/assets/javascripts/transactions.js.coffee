# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->

  class getMinutes
    
    constructor: () -> 
      curVal = $('#scroller_val').val()
      
      hours = parseInt curVal.split(' ')[0]
      mins = parseInt curVal.split(' ')[1]

      minFromHours = hours * 60

      return minFromHours + mins


  hm = [{}]

  # Set up hours wheel

  hm[0].Hours = {}
  
  for n in [0..1] when n <= 1
    hm[0].Hours[n] = if n < 10 then '0' + n else n

  
  # Set up mins wheel

  hm[0].Minutes = {}
  for n in [0..60] when n < 60
    hm[0].Minutes[n] = if n < 10 then '0' + n else n

  options = 
    preset: ''
    display: 'inline'
    wheels: hm


  $('#scroller_val').scroller options

  $('#complete').click () ->
    mins = getMinutes()
    $('#transaction_minutes').val mins
    $('form').submit()


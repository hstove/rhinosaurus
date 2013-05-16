# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@pickAvatar = (event) ->
  file = event.fpfile
  console.log file
  console.log 'avatar'
  title = "Successfully selected "
  if file.filename
    title += file.filename
  else
    title += "file"
  title += "."
  $('.file-success').text(title)
  if file.url
    $('#song_filepicker_url').val(file.url)
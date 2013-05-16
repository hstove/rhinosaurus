class Rhino.Routers.SongsRouter extends Backbone.Router
  initialize: (options) ->
    @songs = new Rhino.Collections.SongsCollection()
    @songs.reset options.songs

  routes:
    "new"      : "newSong"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newSong: ->
    @view = new Rhino.Views.Songs.NewView(collection: @songs)
    $("#songs").html(@view.render().el)

  index: ->
    @view = new Rhino.Views.Songs.IndexView(songs: @songs)
    $("#songs").html(@view.render().el)

  show: (id) ->
    song = @songs.get(id)

    @view = new Rhino.Views.Songs.ShowView(model: song)
    $("#songs").html(@view.render().el)

  edit: (id) ->
    song = @songs.get(id)

    @view = new Rhino.Views.Songs.EditView(model: song)
    $("#songs").html(@view.render().el)

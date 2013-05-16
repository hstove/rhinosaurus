class Rhino.Models.Song extends Backbone.Model
  paramRoot: 'song'

  defaults:
    filepicker_url: null
    title: null
    plays: null
    length: null

class Rhino.Collections.SongsCollection extends Backbone.Collection
  model: Rhino.Models.Song
  url: '/songs'

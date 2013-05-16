json.array!(@songs) do |song|
  json.extract! song, :filepicker_url, :title, :plays, :length
  json.url song_url(song, format: :json)
end
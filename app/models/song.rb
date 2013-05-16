class Song < ActiveRecord::Base
  validates_presence_of :title, :filepicker_url
end

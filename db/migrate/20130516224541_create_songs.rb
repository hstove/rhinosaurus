class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :filepicker_url
      t.string :title
      t.integer :plays, default: 0
      t.integer :length

      t.timestamps
    end
  end
end

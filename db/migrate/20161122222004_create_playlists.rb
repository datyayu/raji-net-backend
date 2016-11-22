class CreatePlaylists < ActiveRecord::Migration[5.0]
  def change
    create_table :playlists do |t|
      t.string :name
      t.string :image
      t.integer :plays
      t.integer :length
      t.integer :year

      t.timestamps
    end
  end
end

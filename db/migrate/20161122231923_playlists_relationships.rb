class PlaylistsRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :playlists_tracks do |t|
      t.belongs_to :playlist, index: true
      t.belongs_to :track, index: true
    end

    change_table :playlists do |t|
      t.belongs_to :user, index: true
    end
  end
end

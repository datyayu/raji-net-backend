class ArtistRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :artists_releases do |t|
      t.belongs_to :artist, index: true
      t.belongs_to :release, index: true
    end

    create_table :artists_tracks do |t|
      t.belongs_to :artist, index: true
      t.belongs_to :track, index: true
    end
  end
end

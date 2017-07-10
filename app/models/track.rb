class Track < ApplicationRecord
    has_and_belongs_to_many :artists
    belongs_to :playlists
    belongs_to :release
end

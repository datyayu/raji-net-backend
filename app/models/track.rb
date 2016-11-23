class Track < ApplicationRecord
    has_and_belongs_to_many :artists
    has_and_belongs_to_many :playlists
    belongs_to :release
end

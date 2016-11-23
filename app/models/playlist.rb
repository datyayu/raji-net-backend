class Playlist < ApplicationRecord
    has_and_belongs_to_many :tracks
    belongs_to :user
end

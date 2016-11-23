class Release < ApplicationRecord
    has_and_belongs_to_many :artists
    has_many :tracks
    belongs_to :series
end

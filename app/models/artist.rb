class Artist < ApplicationRecord
    has_and_belongs_to_many :tracks
    has_and_belongs_to_many :releases
end

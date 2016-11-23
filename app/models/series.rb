class Series < ApplicationRecord
    has_and_belongs_to_many :seasons
    has_many :releases
end

class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :plays, :length, :year
end

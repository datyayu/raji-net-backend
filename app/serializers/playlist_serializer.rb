class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :plays, :length, :year, :author

  def author
    object.user.name
  end
end

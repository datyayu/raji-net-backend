class ReleaseSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :year, :length, :plays, :single_type, :artists

  def artists
    object.artists.map { |artist| artist.name  }
  end
end

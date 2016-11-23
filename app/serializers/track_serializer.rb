class TrackSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :artists

  def artists
    object.artists.map { |artist| artist.name  }
  end
end

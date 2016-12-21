class TrackSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :artists, :release

  def artists
    object.artists.map { |artist| artist.name  }
  end
end

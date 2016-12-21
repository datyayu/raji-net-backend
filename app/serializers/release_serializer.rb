class ReleaseSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :year, :length, :plays, :single_type, :artists, :tracks

  def artists
    object.artists.map { |artist| artist.name  }
  end

  def tracks
    custom_tracks = []

    object.tracks.each do |t|
        custom_track = t.attributes
        custom_track[:artists] = t.artists.map { |a| a.name }
        custom_track[:release] = t.release

        custom_tracks.push(custom_track)
    end

    custom_tracks
  end

end

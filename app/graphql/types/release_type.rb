ReleaseType = GraphQL::ObjectType.define do
  name "Release"

  field :id, types.ID, "Release id"
  field :name, types.String, "Release name"
  field :image, types.String, "Release cover image"
  field :single_type, types.String, "Type of release"
  field :length, types.Int, "Number of track in the release"
  field :year, types.Int, "Year it was released"

  field :tracks, TrackType.to_list_type do
    description "Tracks related to the release"
    resolve -> (obj, args, ctx) {
      AssociationLoader.for(Track, :tracks).load(obj)
    }
  end

  field :series, SeriesType do
    description "Series related to the release"
    resolve -> (obj, args, ctx) {
      RecordLoader.for(Series).load(obj.series_id)
    }
  end

  field :artists, ArtistType.to_list_type do
    description "Artists related to the release"
    resolve -> (obj, args, ctx) {
      AssociationLoader.for(Artist, :artists).load(obj)
    }
  end
end

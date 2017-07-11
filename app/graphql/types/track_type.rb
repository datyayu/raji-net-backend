TrackType = GraphQL::ObjectType.define do
  name "Track"

  field :id, types.ID, "Track id"
  field :name, types.String, "Track name"
  field :url, types.String, "Track url"
  field :release, ReleaseType, "Track release"
end

ReleaseType = GraphQL::ObjectType.define do
  name "Release"

  field :id, types.ID, "Release id"
  field :name, types.String, "Release name"
  field :image, types.String, "Release cover image"
  field :single_type, types.String, "Type of release"
  field :length, types.Int, "Number of track in the release"
  field :year, types.Int, "Year it was released"
  field :series_id, types.ID, "Series related to the release"
end

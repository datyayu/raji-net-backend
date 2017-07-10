SeriesType = GraphQL::ObjectType.define do
  name "Series"

  field :id, types.ID, "Series id"
  field :name, types.String, "Series name"
  field :artist, types.String, "Series artist"
  field :image, types.String, "Series cover image"
end

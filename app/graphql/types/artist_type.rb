ArtistType = GraphQL::ObjectType.define do
  name "Artist"

  field :id, types.ID, "Artist id"
  field :name, types.String, "Artist name"
  field :image, types.String, "Artist's image"
  field :bio, types.String, "Artist's Bio"
end

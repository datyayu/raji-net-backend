ArtistType = GraphQL::ObjectType.define do
  name "Artist"

  field :id, types.ID, "Artist id"
  field :name, types.String, "Artist name"
  field :image, types.String, "Artist's image"
  field :bio, types.String, "Artist's Bio"

  field :releases, ReleaseType.to_list_type do
    description "Releases related to the artist"
    resolve -> (obj, args, ctx) {
      AssociationLoader.for(Release, :releases).load(obj)
    }
  end
end

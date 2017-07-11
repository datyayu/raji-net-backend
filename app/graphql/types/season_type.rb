SeasonType = GraphQL::ObjectType.define do
  name "Season"

  field :name, types.String, "Season name"
  field :image, types.String, "Season cover image"
end

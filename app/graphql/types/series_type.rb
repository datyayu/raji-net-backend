SeriesType = GraphQL::ObjectType.define do
  name "Series"

  field :id, types.ID, "Series id"
  field :name, types.String, "Series name"
  field :image, types.String, "Series cover image"

  field :releases, ReleaseType.to_list_type do
    description "Releases related to the series"
    resolve -> (obj, args, ctx) {
      AssociationLoader.for(Release, :releases).load(obj)
    }
  end
end

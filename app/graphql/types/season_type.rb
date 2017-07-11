SeasonType = GraphQL::ObjectType.define do
  name "Season"

  field :name, types.String, "Season name"
  field :image, types.String, "Season cover image"

  field :series, SeriesType.to_list_type do
    description "Series that were release on that season"
    resolve -> (obj, args, ctx) {
      AssociationLoader.for(Series, :series).load(obj)
    }
  end
end

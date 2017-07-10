Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

######################
#       SERIES       #
######################

  field :series_list do
    type SeriesType.to_list_type
    argument :limit, types.Int
    argument :search, types.String
    description "Get the anime series list"

    resolve -> (obj, args, ctx) { find_list_by_queries Series, args }
  end

  field :series_by_id do
    type SeriesType
    argument :id, !types.ID
    description "Get an anime series by its id"

    resolve -> (obj, args, ctx) { find_by_id Series, args[:id] }
  end

######################
#      RELEASES      #
######################
    field :release_list do
    type ReleaseType.to_list_type
    argument :limit, types.Int
    argument :search, types.String
    argument :series_id, types.ID
    description "Get the releases list"

    resolve -> (obj, args, ctx) {
      series_id = args[:series_id]
      limit = args[:limit] ? args[:limit] : 10

      if (series_id)
        Release.where("series_id = ?", series_id).limit(limit)
      else
        find_list_by_queries Release, args
      end
    }
  end

  field :release_by_id do
    type ReleaseType
    argument :id, !types.ID
    description "Get a release by its id"

    resolve -> (obj, args, ctx) { find_by_id Release, args[:id] }
  end
end


# Generic query methods
def find_by_id(model, id)
  model.find(id)
end

def find_list_by_queries(model, args)
  search_query = args[:search]
  limit = args[:limit] ? args[:limit] : 10

  if search_query then
    model.where("name LIKE '%#{search_query}%'").limit(limit)
  else
    model.limit(limit)
  end
end

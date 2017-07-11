Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

######################
#       ARTIST       #
######################
  field :artist_list do
    type ArtistType.to_list_type
    argument :limit, types.Int
    argument :search, types.String
    description "Get the artist list"

    resolve -> (obj, args, ctx) { find_list_by_queries Artist, args }
  end

  field :artist_by_id do
    type ArtistType
    argument :id, !types.ID
    description "Get an artist by its id"

    resolve -> (obj, args, ctx) { find_by_id Artist, args[:id] }
  end


######################
#      PLAYLIST      #
######################

  field :playlist_list do
    type PlaylistType.to_list_type
    argument :limit, types.Int
    argument :search, types.String
    description "Get the playlist list"

    resolve -> (obj, args, ctx) { find_list_by_queries Playlist, args }
  end

  field :playlist_by_id do
    type PlaylistType
    argument :id, !types.ID
    description "Get an playlist by its id"

    resolve -> (obj, args, ctx) { find_by_id Playlist, args[:id] }
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


######################
#       SEASON       #
######################

  field :season_list do
    type SeasonType.to_list_type
    argument :limit, types.Int
    argument :search, types.String
    description "Get the season list"

    resolve -> (obj, args, ctx) { find_list_by_queries Season, args }
  end

  field :season_by_id do
    type SeasonType
    argument :id, !types.ID
    description "Get a season by its id"

    resolve -> (obj, args, ctx) { find_by_id Season, args[:id] }
  end


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
#       TRACKS       #
######################

  field :tracks_list do
    type TrackType.to_list_type
    argument :limit, types.Int
    argument :search, types.String
    description "Get the track list"

    resolve -> (obj, args, ctx) { find_list_by_queries Track, args }
  end

  field :tracks_by_id do
    type TrackType
    argument :id, !types.ID
    description "Get a track by its id"

    resolve -> (obj, args, ctx) { find_by_id Track, args[:id] }
  end
end


######################
#   HELPER METHODS   #
######################
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

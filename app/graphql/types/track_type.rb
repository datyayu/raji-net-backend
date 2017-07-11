TrackType = GraphQL::ObjectType.define do
  name "Track"

  field :id, types.ID, "Track id"
  field :name, types.String, "Track name"
  field :url, types.String, "Track url"
  field :release, ReleaseType, "Track release"

  field :release, ReleaseType.to_list_type do
    description "Releases related to the track"
    resolve -> (obj, args, ctx) {
      RecordLoader.for(Release).load(obj.release_id)
    }
  end
end

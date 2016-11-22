class ReleaseSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :year, :length, :plays, :single_type
end

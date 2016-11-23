class SeriesSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :releases
end

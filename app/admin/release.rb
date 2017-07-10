ActiveAdmin.register Release do
  permit_params [:name, :image, :year, :length, :plays, :single_type, :series_id]
end

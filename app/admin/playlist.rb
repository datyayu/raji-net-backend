ActiveAdmin.register Playlist do
  permit_params [:user_id, :tracks, :name, :image, :plays, :year]
end

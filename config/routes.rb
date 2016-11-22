Rails.application.routes.draw do
  resources :users
  resources :playlists
  resources :releases
  resources :seasons
  resources :tracks
  resources :series
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

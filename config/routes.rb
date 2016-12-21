Rails.application.routes.draw do
  scope(:path => '/api') do
    # the rest of your routes go here
    resources :users
    resources :playlists
    resources :releases
    resources :seasons
    resources :tracks
    resources :series
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

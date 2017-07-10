Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Graphql
  post '/graphql', to: 'graphql#execute'

  # Graphiql interactive page
  mount GraphiQL::Rails::Engine, at: '/', graphql_path: '/graphql'

  # Normal api resources
  scope(path: '/api') do
    resources :users
    resources :playlists
    resources :releases
    resources :seasons
    resources :tracks
    resources :series
  end
end

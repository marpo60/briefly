Rails.application.routes.draw do
  root to: "home#index"
  post "/", to: 'home#create'

  get '*key', to: 'short_url#show', as: :short_url
end

Rails.application.routes.draw do
  namespace :api do
    resources :recipes
    resources :categories, only: [:index]
    resources :cuisines, only: [:index]
    post '/signup', to: 'users#create'
    get '/me', to: 'users#show'
    get '/users', to: 'users#index'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    post '/:id/:recipe_id', to: 'users#create_favorite'
    get 'pages/download', to: 'pages#download'
    post '/favorites', to: 'favorites#create'
    get '/favorites', to: 'favorites#index'
    delete '/favorites/:id', to: 'favorites#destroy'
  end
  
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end

Rails.application.routes.draw do
 
  resources :recipes
  resources :categories, only: [:index]
  resources :cuisines, only: [:index]
  post '/signup', to: 'users#create'
  get '/me', to: 'users#show'
  get '/users', to: 'users#index'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/:id/:recipe_id', to: 'users#create_favorite'
  delete '/:id/:recipe_id', to: 'users#destroy_favorite'
  get 'pages/download', to: 'pages#download'
  post '/favorites', to: 'favorites#create'
  get '/:id/favorites', to: 'favorites#index'
  
end

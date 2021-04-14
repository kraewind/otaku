Rails.application.routes.draw do
  get "/", to: "users#show", as: 'root'
  get 'searches/results', as: 'searches'
  resources :actors
  resources :viewings
  resources :users, except: [:create]
  resources :comments
  resources :shows do
    resources :characters, only: [:show, :index, :new, :create]
  end
  resources :characters
  post '/users', to: "users#create", as: "signup"

  get '/login', to: "sessions#new", as: "signin"
  post '/login', to: "sessions#create"
  get 'auth/:provider/callback', to: 'sessions#omniauth'
  get '/logout', to: "sessions#destroy", as: "logout"

  # post '/users/new', to: 'users#create'
  # get '/viewings/new', to: 'viewings#new'
  # post '/viewings', to: 'viewings#create'
  # get '/users/:id', to: 'users#show'
  # get '/users/:id/edit', to: 'users#edit'
  # delete '/viewings/:id', to: 'viewings#destroy'
  # delete '/shows/:id', to: 'shows#destroy'
  # delete '/comments/:id', to: 'comments#destroy'
  # delete '/characters/:id', to: 'characters#destroy'
  # delete '/actors/:id', to: 'actors#destroy'
  



  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

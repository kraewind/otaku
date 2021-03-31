Rails.application.routes.draw do
  resources :actors
  resources :characters
  resources :viewings
  resources :users
  resources :comments
  resources :shows
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

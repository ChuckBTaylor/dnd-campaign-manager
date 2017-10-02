Rails.application.routes.draw do

  resources :spells
  root 'users#index'
  resources :campaigns
  resources :characters
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

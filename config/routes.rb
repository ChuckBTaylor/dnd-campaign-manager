Rails.application.routes.draw do


  get '/spells/search', to: 'spells#search'

  root 'statics#home'

  get '/home', to: 'statics#home', as: 'home'
  get '/login', to: 'statics#login', as: 'login'
  post 'sessions/create', to: 'sessions#create'
  delete 'sessions/destroy', to: 'sessions#destroy'

  patch '/campaigns/:campaign_id/characters/:character_id/remove_campaign', to: 'characters#remove_campaign'

  patch "/users/:user_id/characters/:character_id/join_campaign", to: 'characters#join_campaign'

  patch "/users/:user_id/characters/:character_id/learn_spell", to: 'characters#learn_spell'

  delete "/users/:user_id/characters/:character_id/forget_spell/:spell_id", to: 'characters#forget_spell'
  
  resources :class_names, only: [:index, :show]
  resources :traits, only: [:index, :show]
  resources :races, only: [:index, :show]
  resources :spells, only: [:index, :show]

  resources :users do
    resources :characters, except: :index
    resources :campaigns, except: :index
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

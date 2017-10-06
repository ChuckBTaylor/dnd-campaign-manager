Rails.application.routes.draw do



  resources :skills
  get '/spells/search', to: 'spells#search'

  root 'statics#home'

  get '/home', to: 'statics#home', as: 'home'
  get '/login', to: 'statics#login', as: 'login'
  post 'sessions/create', to: 'sessions#create'
  delete 'sessions/destroy', to: 'sessions#destroy', as: 'logout'

  patch '/users/:user_id/characters/:character_id/leave_campaign', to: 'characters#leave_campaign'

  patch '/campaigns/:campaign_id/characters/:character_id/remove_campaign', to: 'characters#remove_campaign'

  patch "/users/:user_id/characters/:character_id/join_campaign", to: 'characters#join_campaign'

  patch "/users/:user_id/characters/:character_id/learn_spell", to: 'characters#learn_spell'

  post "/campaigns/:campaign_id/add_character", to: 'campaigns#add_character'

  delete "/users/:user_id/characters/:character_id/forget_spell/:spell_id", to: 'characters#forget_spell'

  resources :class_names, only: [:index, :show]
  resources :traits, only: [:index, :show]
  resources :races, only: [:index, :show]
  resources :spells, only: [:index, :show]
  resources :campaigns  do
    resources :messages, only: [:create, :index]
    resources :notes, only: [:index, :create]
  end

  resources :users do
    resources :characters, except: :index
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

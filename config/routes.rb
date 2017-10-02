Rails.application.routes.draw do

  resources :traits
  resources :races
  resources :spells
  
  root 'users#index'
  
  patch '/campaigns/:campaign_id/characters/:character_id/remove_campaign', to: 'characters#remove_campaign'

  patch "/users/:user_id/characters/:character_id/join_campaign", to: 'characters#join_campaign'

  resources :users do
    resources :characters, except: :index
    resources :campaigns, except: :index
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

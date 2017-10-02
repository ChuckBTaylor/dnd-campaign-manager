Rails.application.routes.draw do

  resources :class_names
  resources :traits
  resources :races
  resources :spells

  root 'users#index'

  patch '/campaigns/:campaign_id/characters/:character_id/remove_campaign', to: 'characters#remove_campaign'

  patch "/users/:user_id/characters/:character_id/join_campaign", to: 'characters#join_campaign'

  patch "/users/:user_id/characters/:character_id/learn_spell", to: 'characters#learn_spell'

  delete "/users/:user_id/characters/:character_id/forget_spell/:spell_id", to: 'characters#forget_spell'

  resources :users do
    resources :characters, except: :index
    resources :campaigns, except: :index
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

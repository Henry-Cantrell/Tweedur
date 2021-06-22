Rails.application.routes.draw do
  get 'users/index'
  root 'home_pages#show'

  resource :home_pages
  resources :discover_pages
  resources :follow_relationships

  resource :user do
    resources :user_profiles
  end

  devise_for :users, :controllers => { 
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'registrations/registrations'
     }

end

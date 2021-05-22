Rails.application.routes.draw do
  root 'home_pages#show'

  resource :home_pages

  resource :user do
    resources :user_profiles
  end

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

end

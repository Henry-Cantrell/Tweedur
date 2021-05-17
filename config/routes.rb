Rails.application.routes.draw do
  root 'user_profiles#show'

  devise_for :users do
    resources :user_profiles
  end
end

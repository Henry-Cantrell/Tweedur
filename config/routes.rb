Rails.application.routes.draw do
  root 'homepage#show'

  resource :home_page

  resource :user do
    resources :user_profiles
  end

  devise_for :users 

end

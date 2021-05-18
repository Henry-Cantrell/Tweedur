Rails.application.routes.draw do
  root 'homepage#show'

  resource :home_page

  resources :users do
    resource :user_profile
  end

  devise_for :users 

end

Rails.application.routes.draw do
  root 'movies#index'
   resources :movies, only: [:index] do
    collection do
      get :movies
    end
    member do 
    	resources :screens, only: [:index]
    end
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

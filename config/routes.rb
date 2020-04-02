Rails.application.routes.draw do
  get 'reservations/show'
  get 'reservations/index'
  get 'seats/index'
  root 'movies#index'
   resources :movies, only: [:index] do
    collection do
      get :movies
    end
    member do 
    	resources :screens, only: [:index]
    end
  end
  resources :seats do
    collection do
      post 'reservation'
    end
  end

  resources :reservations
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

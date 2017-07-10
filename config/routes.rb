Rails.application.routes.draw do
  devise_for :users
  resources :profiles, only: [:new, :edit, :create, :update]

  resources :categories
  root to: 'pages#home'



  resources :users, only: [:show]
  resources :events, except: [:destroy]
  resources :events do
  resources :bookings, only: [:create]
  end
  namespace :api do
     resources :events
  end


end

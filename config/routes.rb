Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD
=======
  root to: 'home#index'
  resources :castles
>>>>>>> master
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   root to: 'pages#home'
  resources :castles do
    resources :bookings, only: [:create]

  end
  resources :bookings, only: [:index, :show, :destroy, :update] do
      resources :reviews, only: [:create, :index, :show]
    end

  namespace :my do
    resources :castles, only: [:index]
    resources :bookings, only: [:index, :update]
  end
end

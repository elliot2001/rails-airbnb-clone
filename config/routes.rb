Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  root to: 'pages#home'
  resources :castles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :castles do
    resources :bookings, only: [:create, :new]
  end

  resources :bookings, only: [:index, :show] do
      resources :reviews, only: [:create, :index, :show]
    end

  namespace :my do
    resources :castles, only: [:index]
    resources :bookings, only: [:index, :update]
  end
end

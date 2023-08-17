Rails.application.routes.draw do
  devise_for :users
  root 'events#index'
  resources :users, only: :index

  get '/user/:id', to: 'users#show', as: :user

  resources :events do
    member do
      get 'rsvp'
      get 'cancel_rsvp'
    end
  end
end

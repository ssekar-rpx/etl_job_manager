Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :dashboard, only: [:index]

  root "sessions#new"
end

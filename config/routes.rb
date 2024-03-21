Rails.application.routes.draw do
  root 'home#index'
  resources :states, only: [:index]
end

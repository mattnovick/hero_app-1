Rails.application.routes.draw do
  devise_for :users
  resources :characters
  resources :universes
  resources :abilities

  root "home#index"
end

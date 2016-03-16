Rails.application.routes.draw do
  resources :characters
  resources :universes
  resources :abilities

  root "characters#index"
end

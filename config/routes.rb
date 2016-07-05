Rails.application.routes.draw do
  resources :departures
  resources :vista
  devise_for :users
  root 'home#index'
  resources :entradas
  resources :productos
  resources :home
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

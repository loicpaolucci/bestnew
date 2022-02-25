Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events
  resources :users
  resources :attendance, only: [:new, :create]
  root to:'events#index'

end
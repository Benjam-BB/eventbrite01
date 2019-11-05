Rails.application.routes.draw do
  get 'user/show'
  devise_for :users
  root 'events#index'
  resources :events, only: [:index, :show, :new]
  resources :user, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

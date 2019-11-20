Rails.application.routes.draw do
  devise_for :users
  # root to: 'pages#home'
  root to: 'pastels#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show]

  resources :pastels

  # resources :reviews, only: [:new, :create]

  resources :orders, except: [:index, :update]

  patch 'orders/:id/update', to: "orders#update", as: :update


end

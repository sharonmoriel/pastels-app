Rails.application.routes.draw do
  devise_for :users
  # root to: 'pages#home'
  root to: 'pastels#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show]

  resources :pastels

  # resources :reviews, only: [:new, :create]

  resources :orders, except: [:index] do
    member do
      get :review
    end
  end

  # get 'orders/:id/confirm_order', to: "orders#confirm_order", as: :confirm_order


end

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, except: [:index] do
    resources :pastels, except: [:index]
  end

  resources :pastels, only: [:index]

  resources :reviews, only: [:new, :create]

  resources :orders, except: [:index, :show]
end

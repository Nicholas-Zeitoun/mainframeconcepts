Rails.application.routes.draw do

  # Concept routes
  resources :concepts do
    resources :topics, only: [:new, :create]
  end

  # Topic routes
  resources :topics, only: [:show, :edit, :update, :destroy] do
    resources :notes, only: [:new, :create, :destroy]
  end

  resources :notes, only: [:show, :edit, :update, :destroy]

  # root to: 'pages#home'
  root to: 'concepts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  get 'resources/new'
  get 'resources/show'
  get 'resources/edit'
  # Concept routes
  resources :concepts do
    resources :topics, only: [:new, :create]
  end

  # Topic routes
  resources :topics, only: [:show, :edit, :update, :destroy] do
    resources :notes, only: [:new, :create, :destroy]
  end

  # Resources Creation Route
  resources :concepts, :topics do
     resources :resources, only: [:new, :create, :destroy] #-> url.com/photos/:photo_id/comments
  end

  resources :notes, only: [:show, :edit, :update, :destroy]
  resources :resources, only: [:show, :edit, :update, :destroy]

  # root to: 'pages#home'
  root to: 'concepts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end




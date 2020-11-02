Rails.application.routes.draw do
  resources :concepts
  resources :notes
  # root to: 'pages#home'
  root to: 'concepts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

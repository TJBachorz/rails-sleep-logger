Rails.application.routes.draw do
  resources :sleeplogs, only: [:index, :show]
  resources :users, only: [:index, :create]

  post '/login', to: 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

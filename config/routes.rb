Rails.application.routes.draw do
  resources :users, only: [:index, :show, :update]
  resources :user_cities


  post 'signup', to: 'users#create', as: '/signup'
  post 'login', to: 'auth#create', as: '/login'
  get 'myuser', to: 'auth#show', as: '/myuser'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

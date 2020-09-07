Rails.application.routes.draw do
  resources :users, only: [:index, :show, :update]
  resources :user_cities, only: [:create]

  delete 'delete_city', to: 'user_cities#destroy', as: '/delete_city'
  post 'signup', to: 'users#create', as: '/signup'
  post 'login', to: 'auth#create', as: '/login'
  get 'myuser', to: 'auth#show', as: '/myuser'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end



Rails.application.routes.draw do
  resources :users, only: [:index, :show, :update]



  post 'signup', to: 'users#create', as: '/signup'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

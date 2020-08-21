Rails.application.routes.draw do
  resources :accomplishments, only: [:show, :create, :edit, :update]
  resources :goals
  resources :habits, only: [:index, :show, :create, :edit, :update]
  resources :users, only: [:show, :create, :edit, :update, :destroy]

  post '/login', to: 'users#login'
  get '/persist', to: 'users#persist'
end

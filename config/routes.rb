Rails.application.routes.draw do
  resources :accomplishments, only: [:index, :show, :create, :edit, :update]
  resources :goals
  resources :habits, only: [:index, :show, :create, :edit, :update]
  resources :users, only: [:show, :create, :edit, :update, :destroy]
end

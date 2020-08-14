Rails.application.routes.draw do
  resources :accomplishments, only: [:index, :show, :create, :edit, :update]
  resources :goals
  resources :habits, only: [:index, :show, :create, :edit, :update]
  resource :users, only: [:show, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :reactions, only: [:new, :create, :edit, :update, :destroy]
  resources :posts
  resources :ingredients, only: [:index, :show]
  resources :recipes, only: [:index, :show]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

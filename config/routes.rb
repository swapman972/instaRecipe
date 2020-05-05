Rails.application.routes.draw do
  resources :new_recipe_ingredients, only: [:new, :create, :edit, :update]
  resources :new_recipes 
  resources :reactions, only: [:new, :create, :edit, :update, :destroy]
  resources :posts
  # resources :recipe_ingredients
  resources :ingredients, only: [:index, :new, :create, :show]
  resources :recipes, only: [:index, :show]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

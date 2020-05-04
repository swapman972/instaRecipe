Rails.application.routes.draw do
  resources :new_recipe_ingredients
  resources :new_recipes
  resources :reactions
  resources :posts
  resources :recipe_ingredients
  resources :ingredients
  resources :recipes, only: [:index, :show]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

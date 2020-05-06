Rails.application.routes.draw do
  resources :cuisines, only: [:index, :show]
  resources :reactions, only: [:new, :create, :edit, :update, :destroy]
  resources :posts 
  resources :ingredients, only: [:index, :show]
  resources :recipes, only: [:index, :show]
  resources :users
  put '/posts/:id/like', to: 'posts#like', as: "like"
  put '/posts/:id/dislike', to: 'posts#dislike', as: "dislike"
  put '/posts/:id/love', to: 'posts#love', as: "love"
  put '/posts/:id/digust', to: 'posts#disgust', as: "disgust"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

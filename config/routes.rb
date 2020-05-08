Rails.application.routes.draw do
  #root 'posts#index'
  resources :cuisines, only: [:index, :show]

  resources :posts do
    resources :reactions, only: [:new, :create, :edit, :update, :destroy]
  end
  
  resources :ingredients, only: [:index, :show]
  resources :recipes, only: [:index, :show]
  resources :users
  put '/posts/:id/like', to: 'posts#like', as: "like"
  put '/posts/:id/dislike', to: 'posts#dislike', as: "dislike"
  put '/posts/:id/love', to: 'posts#love', as: "love"
  put '/posts/:id/digust', to: 'posts#disgust', as: "disgust"

  delete "/sessions/logout", to: "sessions#destroy", as: "log_out_session"
  get "/sessions/login", to: "sessions#new", as: "new_login"
  post "/sessions/login", to: "sessions#create"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

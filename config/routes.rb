Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :animes, only: [ :index, :show ] do
    resources :reviews, only: [ :new, :create ]
    resources :watchlist_animes, only: [ :create, :edit, :update, :destroy ]
  end
  resources :reviews, only: [ :update, :destroy ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

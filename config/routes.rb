Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :animes, only: [ :index, :show ] do
    resources :reviews, only: :create
    resources :watchlist_animes, only: :create
  end
  resources :watchlist_animes, only: :destroy 
  resources :reviews, only: [ :update, :destroy ]
end

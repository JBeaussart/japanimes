Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: :show
  resources :animes, only: [ :index, :show ] do
    resources :theory, only: :create
    resources :reviews, only: :create
    resources :watchlist_animes, only: [ :create, :index ]
  end
  resources :watchlist_animes, only: :destroy
  resources :reviews, only: [ :update, :destroy ]
end

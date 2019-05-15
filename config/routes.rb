Rails.application.routes.draw do
  resources :books
  resources :authors
  resources :accounts, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  get 'books/index'
  get 'authors/index'

  root 'sessions#new'
end

Rails.application.routes.draw do
  resources :books
  resources :authors

  get 'books/index'
  get 'authors/index'

  root 'books#index'
end

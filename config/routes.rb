Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'movies#index'
  resources :movies, only: ['index', 'create'] do
    resources :reviews, only: ['new', 'create']
  end
  resources :lists, only: ['index', 'show', 'new', 'create', 'destroy'] do
    resources :bookmarks, only: ['new', 'create', 'destroy']
    resources :list_reviews, only: ['new', 'create']
  end
end

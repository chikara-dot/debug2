 Rails.application.routes.draw do
     devise_for :users
    root to: 'homes#top'

    get 'home/about' => 'homes#about'
    resources :users,only: [:show,:index,:edit,:update]

    resources :books,only: [:new, :create, :index, :show, :destroy, :update, :edit] do
     resource :favorites, only: [:create, :destroy]
     resources :book_comments, only: [:create, :destroy]
    end

    get 'search' => 'searche#search', as: 'search'

 end
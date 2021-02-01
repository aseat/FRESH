Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  resources :posts
  devise_for :users
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
 
  root to: "concretes#index"
  resources :ways do
  resources :likes, only: [:create, :destroy]
  end

  resources :questions, only: [:index,:new,:edit,:show]
  resources :answers, only: [:index,:new,:edit,:show]
  resources :words, only: [:index,:new,:edit,:show]
end

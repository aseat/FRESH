Rails.application.routes.draw do
  
  get "users/show" => "users#show"
  devise_for :users
  

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
 
  root to: "concretes#index"
  
  resources :ways do
    collection do
      get 'search'
    end
  resources :likes, only: [:create, :destroy]
  resources :waycomments, only: [:create, :destroy]
  end

  resources :questions do
    collection do
      get 'search'
    end
    resources :choices, only: [:index,:create]
  end


  get 'answers/search', to:'answers#search' 
  resources :answers do
    resources :responses, only: [:create]
  end
   

  resources :words do
    collection do
      get 'search'
    end
  end

end

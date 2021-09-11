Rails.application.routes.draw do
  
  
  devise_for :users, controllers: {
    registrations: "users/registrations",
  }
  

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
 
  root to: "concretes#index"

  resource :concretes, only: [:show]
  
  resources :users, only: [:show,:edit]

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


  resources :answers do
    collection do
      get 'search'
    end
    resources :responses, only: [:create]
  end
   

  resources :words do
    collection do
      get 'search'
    end
  end

end

Rails.application.routes.draw do
  root to: 'users#new'

  #Route to edit the account
  get '/profil', to: 'users#edit', as: :profil

  #To post the information edited for the account
  patch 'profil', to: 'users#update'

  #Sessions
  get '/login', to: 'sessions#new', as: :new_session
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :destroy_session

  resources :passwords, only: [:new, :create, :edit, :update]
  
  resources :users, only: [:new, :create, :edit] do
    member do 
      get 'confirm'
    end
  end
end

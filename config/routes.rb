Rails.application.routes.draw do
  devise_for :users
  root to: "dishes#index"
  resources :dishes 
    resources :comments,only: :create
   
   resources :users, only: :show
end

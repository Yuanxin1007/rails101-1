Rails.application.routes.draw do
  devise_for :users
  resources :groups do
    #add groups and quit groups =
    member do
      post :join
      post :quit
    end

    resources :posts
  end
  namespace :account do
    resources :groups
  end
  
  root 'groups#index'
end

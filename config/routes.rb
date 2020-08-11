Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  resources :items, except: :new
  resources :users, only: :show do
    resources :destinations, only: [:new, :create, :destroy]
    resources :items, only: :new
  end
end

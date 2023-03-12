Rails.application.routes.draw do
  devise_for :users
  root to: "tops#index"
  resources :tops, only:[:index]
  resources :categories do
    resources :vocabularies, only: [:create, :destroy]
  end
end

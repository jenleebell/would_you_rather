Rails.application.routes.draw do
  devise_for :users
  root to: 'questions#index'

  resources :questions do
    resources :answers
    resources :comments
  end

  resources :users, only: [:show]
end

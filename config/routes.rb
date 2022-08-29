Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'users/dashboard', to: 'users#dashboard'
  resources :learnings, only: [:index, :show] do
    collection do
      post :search
    end
  end
  resources :questions, only: :show
  resources :answers, only: :create
  resources :rewards, only: :show
  resources :interests, only: :index do
    collection do
      post :search
    end
  end
end

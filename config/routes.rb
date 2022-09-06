Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'users/dashboard', to: 'users#dashboard'
  resources :learnings, only: [:index] do
    collection do
      post :search
    end
  end
  resources :questions, only: :show do
    resources :answers, only: :create
  end
  resources :rewards, only: :show
  resources :interests, only: :index
  resources :lecture, only: :show
end

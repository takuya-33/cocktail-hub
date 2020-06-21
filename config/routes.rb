Rails.application.routes.draw do
  get 'users/show'
  root to: 'posts#index'

  resources :posts

  resources :users, only: [:show]

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  devise_scope :user do
    get 'signup', :to => 'users/registrations#new'
    get 'login', :to => 'users/sessions#new'
    get 'logout', :to => 'users/sessions#destroy'
  end
end

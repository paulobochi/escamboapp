Rails.application.routes.draw do

  devise_for :users, path: 'auth'

  get 'admin', to: 'admin/dashboard#index'

  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
    resources :categories
    resources :users
  end

  namespace :site do
    get 'home', to: 'home#index'
  end

  root 'site/home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

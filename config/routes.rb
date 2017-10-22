  Rails.application.routes.draw do
      devise_for :users
      resources :users
      resources :units
      get 'page/index'

      mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
      root 'page#index'
      root to: redirect('/admin')
    end

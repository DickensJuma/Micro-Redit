# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#index'
  resources :users

  resources :posts do
    resources :comments
  end
end

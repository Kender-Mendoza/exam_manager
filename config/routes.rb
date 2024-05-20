# frozen_string_literal: true

Rails.application.routes.draw do
  root 'homes#index'
  get '/homes', to: 'homes#index'
  devise_for :users
  resources :exams
end

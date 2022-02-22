Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'
  resources :items, only: [:new, :create, :index]
end

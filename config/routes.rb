Rails.application.routes.draw do
  resources :tags
  resources :categories
  devise_for :users
  resources :tag_associations
  resources :tasks
  resources :users
  get 'welcome/index'

  root 'welcome#index'
end

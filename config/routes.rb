Rails.application.routes.draw do
  resources :tag_associations
  resources :tasks
  resources :users
  get 'welcome/index'

  root 'welcome#index'
end

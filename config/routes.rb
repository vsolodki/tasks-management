Rails.application.routes.draw do
  resources :tags
  resources :categories
  resources :tag_associations
  resources :tasks
  get 'welcome/index'
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations',
      passwords: 'users/passwords'
  }
  root to: 'home#index'
end

Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  get "homes/about"
  resources :books ,only: [:index,:show]
  resources :users ,only: [:index,:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

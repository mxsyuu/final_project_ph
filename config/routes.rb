Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "users#index"
  resources :bookmarks
  resources :products
  resources :categories
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

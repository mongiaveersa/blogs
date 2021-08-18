Rails.application.routes.draw do
  # get 'about/page'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'about', to: 'about#page'
  resources :articles , only: [:new, :show, :index, :create, :edit, :update]
end

Rails.application.routes.draw do

  get 'conflicts/index'
  get 'conflicts/show'
  get 'conflicts/new'
  get 'conflicts/create'
  get 'conflicts/edit'
  get 'conflicts/update'
  get 'conflicts/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :mediators
  resources :conflicts

  get 'dashboard', to: 'pages#dashboard'
end

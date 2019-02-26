Rails.application.routes.draw do
  get 'mediators/index'
  get 'mediators/show'
  get 'mediators/new'
  get 'mediators/create'
  get 'mediators/edit'
  get 'mediators/update'
  get 'mediators/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :mediators

  get 'profile', to: 'pages#profile'
end

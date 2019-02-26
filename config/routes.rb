Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :mediators

  resources :conflicts do
    member do
      get 'catch'
      get 'leave'
    end
  end

  get 'dashboard', to: 'pages#dashboard'
end

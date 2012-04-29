Payparking::Application.routes.draw do

  get "vehicles/index"

  get "vehicles/new"

  devise_for :users

  resources :transactions

  resources :vehicles

  root :to => 'pages#home'

end

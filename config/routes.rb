Payparking::Application.routes.draw do


  get '/account' => 'pages#account'

  devise_for :users

  resources :transactions

  resources :vehicles

  root :to => 'pages#account'

end

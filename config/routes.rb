Payparking::Application.routes.draw do


  get '/pages/account'

  devise_for :users

  resources :transactions

  resources :vehicles

  root :to => 'pages#home'

end

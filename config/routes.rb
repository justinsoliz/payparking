Payparking::Application.routes.draw do

  devise_for :users

  resources :transactions

  root :to => 'pages#home'

end

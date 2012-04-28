Payparking::Application.routes.draw do

  resources :users

  root :to => 'pages#home'

end

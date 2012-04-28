Payparking::Application.routes.draw do

  get "user/new"

  get "pages/home"

  root :to => 'pages#home'

end

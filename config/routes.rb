Rocketscience::Application.routes.draw do
  
  root :to => 'home#index'

  match 'home' => 'home#index'

  #match 'login' => 'user#login'



end
